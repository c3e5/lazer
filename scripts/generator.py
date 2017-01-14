import logging


class GCodeGenerator(object):
    '''
    Generate G-Code from array of vectors
    '''
    def __init__(self, output, header_comment):
        self.is_on = True
        self._output = output
        self._comment = header_comment
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
        self.emit('M3', 'laser on')

    def egoto(self, x, y, comm=None):
        gtc = '01' if self.is_on else '00'
        speed = 600 if self.is_on else 800
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
            src = vector[0]
            dst = vector[1]
            if src != pd:
                path_count += 1
                self.ecomm('Starting path %d' % (path_count))
                self.eoff()
                self.egoto(src[0], src[1])
                self.eon()
            self.egoto(dst[0], dst[1])
            pd = dst
        self.eoff()
        self.egoto(0, 0)
        self.ecomm('Done')
        self._l.debug('Gcode generation completed')

