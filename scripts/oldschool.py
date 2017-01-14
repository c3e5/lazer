#!/usr/bin/env python
'''
Generate a g-code pattern I used to draw in school

Usage: oldschool.py <RADIUS> <NUM_LINES> <NUM_POINTS> [<OUTFILE>]
'''
import logging
import math
import docopt


logging.basicConfig(level=logging.DEBUG)


class OldSchoolPattern(object):

    def __init__(self, radius, nlines, npoints):
        '''
        :param radius: radius of the circle
        :param nlines: number of lines in the circle (from the center)
        :param npoints: number of points on each line
        '''
        self._radius = radius
        self._nlines = nlines
        self._npoints = npoints
        self._assertions()
        self._l = logging.getLogger('OldSchoolPattern')
        self._vectors = self._make_vectors()

    def _assertions(self):
        '''
        Make some checks on inputs params
        '''
        if self._radius <= 0:
            raise Exception('radius (%f) <= 0' % (self._radius))
        if self._nlines < 3:
            raise Exception('nlines (%d) < 3' % (self._nlines))
        if self._npoints < 2:
            raise Exception('npoints (%d) < 2' % (self._npoints))

    def _make_vectors(self):
        vectors = []
        angle = (2.0 * math.pi) / self._nlines  # radians
        self._l.debug('Base angle: %f' % angle)
        for i in range(self._nlines):
            iangle = angle * i
            # self.logger.info('[%d] angle: %f' % (i, iangle))
            # self.logger.info('[%d] (%f, %f)' % (i, math.cos(iangle), math.sin(iangle)))
            ix = math.cos(iangle) * self._radius
            iy = math.sin(iangle) * self._radius
            self._l.debug('[%d] (%f, %f)' % (i, ix, iy))
            vectors.append((ix, iy))
        return vectors

    def giterate(self, fn):
        '''
        Iterate over the generated vectors
        This method is simple, but the generated vector order is really inefficient.
        A simplifier should improve the result

        :type fn: func(srcx, srcy, dstx, dsty)
        :param fn: function to call on each iteration
        '''

        #
        # for each 2 adjacent vectors
        #
        for i in range(len(self._vectors)):
            six = self._vectors[i][0]  # x of current source
            siy = self._vectors[i][1]  # y of current source
            dix = self._vectors[(i + 1) % len(self._vectors)][0]  # x of current dest
            diy = self._vectors[(i + 1) % len(self._vectors)][1]  # y of current dest
            self._l.debug('vectors: (%f, %f) -> (%f, %f)' % (six, siy, dix, diy))
            sxst = six / self._npoints  # source x step
            syst = siy / self._npoints  # source y step
            dxst = dix / self._npoints  # dest x step
            dyst = diy / self._npoints  # dest y step
            #
            # generate each internal vector
            #
            for p in range(1, self._npoints):
                sp = p  # current point in source
                dp = self._npoints - p  # current points in dest
                sx = sxst * sp
                sy = syst * sp
                dx = dxst * dp
                dy = dyst * dp
                fn(((sx, sy), (dx, dy)))


class PathSimplifier(object):
    '''
    Simplify a path that is described as vectors.
    '''
    def __init__(self):
        self._vectors = []
        self._l = logging.getLogger('Simplifier')

    def add_vector(self, vector):
        self._vectors.append(vector)

    def simplify(self):
        '''
        Try to create a continuous paths
        '''
        self._l.debug('Simplify called')
        num_simplified = 0
        ov = self._vectors[:]  # copy of vector array
        nv = []  # new vector array
        pd = None
        while ov:
            for i in range(len(ov)):
                cs = ov[i][0]  # current source
                cd = ov[i][1]  # current dest
                if cs == pd or cd == pd:
                    if cd == pd:
                        ov[i] = (ov[i][1], ov[i][0])
                    num_simplified += 1
                    break
            else:
                # no match - should probably append the closest vector,
                # but will do that later ...
                i = -1
            nv.append(ov[i])
            pd = ov[i][1]
            del ov[i]
        self._l.debug('Simplified %d paths' % num_simplified)
        return nv


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


def subtract(vectors, xsub, ysub):
    res = []
    for v in vectors:
        s, d = v
        sx, sy = s
        dx, dy = d
        res.append(((sx - xsub, sy - ysub), (dx - xsub, dy - ysub)))
    return res



def main():
    opts = docopt.docopt(__doc__)
    radius = float(opts['<RADIUS>'])
    nlines = int(opts['<NUM_LINES>'], 0)
    npoints = int(opts['<NUM_POINTS>'], 0)
    outfilename = opts['<OUTFILE>']
    if not outfilename:
        outfilename = 'os_%f_%d_%d.ngc' % (radius, nlines, npoints)
    logging.getLogger('MainApp').info('Gcode file name: %s' % (outfilename))

    p = OldSchoolPattern(radius=radius, nlines=nlines, npoints=npoints)
    s = PathSimplifier()
    comment = '''Generated by oldschool.py with parameters:
Radius: %f
Number of lines: %d
Number of points/line: %d''' % (radius, nlines, npoints)
    g = GCodeGenerator(open(outfilename, 'w'), comment)
    p.giterate(s.add_vector)
    vectors = s.simplify()
    #
    # adjust all vectors to be negative only
    #
    vectors = subtract(vectors, radius, radius)
    g.generate(vectors)


if __name__ == '__main__':
    main()

