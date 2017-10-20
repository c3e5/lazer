import logging


class GCodeGenerator(object):
    '''
    Generate G-Code from array of vectors
    '''
    def __init__(self, output, header_comment, cut_feed=200, passing_feed=800):
        self.is_on = True
        self._output = output
        self._comment = header_comment
        self._cut_feed = cut_feed
        self._passing_feed = passing_feed
        self._l = logging.getLogger('GCodeGenerator')

    def emit(self, s, comm=None):
        if comm is None:
            comm = ''
        else:
            comm = ' (%s)' % comm.replace(')', ' ').replace('(', ' ')
        self._output.write(s + comm + '\n')

    def eoff(self):
        self.is_on = False
        self.emit('M5', 'laser off')

    def eon(self):
        self.is_on = True
        self.emit('M4', 'laser on')

    def egoto(self, x, y, comm=None):
        gtc = '01' if self.is_on else '00'
        speed = self._cut_feed if self.is_on else self._passing_feed
        self.emit('G%s X%f Y%f F%d' % (gtc, x, y, speed), comm)

    def ecomm(self, comment):
        for l in comment.split('\n'):
            self.emit('(%s)' % (l.replace(')', ' ').replace('(', ' ')))

    def generate(self, vectors):
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
                self.ecomm('Starting path %d' % (path_count))
                self.eoff()
                self.egoto(src.x, src.y)
                self.eon()
            self.egoto(dst.x, dst.y)
            pd = dst
        self.eoff()
        self.egoto(0, 0)
        self.ecomm('Done')
        self._l.debug('Gcode generation completed')
