import logging


class GCodeGenerator(object):
    '''
    Generate G-Code from array of vectors
    '''
    LASER_IS_ON = 1

    def __init__(self, output, header_comment, cut_feed=200, passing_feed=800):
        self._state = {}
        self._output = output
        self._comment = header_comment
        self._cut_feed = cut_feed
        self._passing_feed = passing_feed
        self._l = logging.getLogger('GCodeGenerator')

    def state_reset(self):
        self._state = {}

    def state_change(self, state_type, new_value):
        if self._state.get(state_type, None) != new_value:
            self._state[state_type] = new_value
            return True
        return False

    def state_get(self, state_type):
        return self._state.get(state_type, None)

    def emit(self, s, comm=None):
        if comm is None:
            comm = ''
        else:
            comm = ' (%s)' % comm.replace(')', ' ').replace('(', ' ')
        self._output.write(s + comm + '\n')

    def eoff(self):
        if self.state_change(self.LASER_IS_ON, False):
            self.emit('M5', 'laser off')

    def eon(self):
        if self.state_change(self.LASER_IS_ON, True):
            self.emit('M3', 'laser on')

    def egoto(self, x, y, comm=None):
        gtc = '01' if self.state_get(self.LASER_IS_ON) else '00'
        speed = self._cut_feed if self.state_get(self.LASER_IS_ON) else self._passing_feed
        self.emit('G%s X%f Y%f F%d' % (gtc, x, y, speed), comm)

    def ecomm(self, comment):
        for l in comment.split('\n'):
            self.emit('(%s)' % (l.replace(')', ' ').replace('(', ' ')))

    def generate(self, vectors):
        self.state_reset()
        path_count = 0
        self._l.debug('Generating Gcode')
        self.ecomm(self._comment)
        self.emit('G21', 'Set units to mm')
        pd = None  # previous destination
        for vector in vectors:
            src = vector.s
            dst = vector.d
            if src != pd:
                path_count += 1
                self._l.debug("%s != %s", src, pd)
                self.eoff()
                self.egoto(src.x, src.y)
            if 'pre_command' in vector.attrs:
                self.emit(vector.attrs['pre_command'])
            if src != pd:
                self.eon()
            self.egoto(dst.x, dst.y)
            if 'post_command' in vector.attrs:
                self.emit(vector.attrs['post_command'])
            pd = dst
        self.eoff()
        self.egoto(0, 0)
        self.ecomm('Done')
        self._l.debug('Gcode generation completed')
