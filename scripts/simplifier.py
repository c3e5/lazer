import logging
from math import sqrt
from vectors import Point


def distance(p1, p2):
    distance_x = p1.x - p2.x
    distance_y = p1.y - p2.y
    return sqrt(distance_x ** 2 + distance_y ** 2)


class PathSimplifier(object):
    '''
    Simplify a path that is described as vectors.
    '''
    def __init__(self):
        self._vectors = []
        self._l = logging.getLogger('Simplifier')
        self.max_x = -99999
        self.max_y = -99999

    def add_vector(self, vector):
        self.max_x = max(self.max_x, vector.s.x, vector.d.x)
        self.max_y = max(self.max_y, vector.s.y, vector.d.y)
        self._vectors.append(vector)

    def simplify(self):
        '''
        Try to create a continuous paths
        '''
        self._l.debug('Simplify called')
        num_simplified = 0
        ov = self._vectors[:]
        nv = []
        pd = Point(self.max_x, self.max_y)
        pv = None
        while ov:
            # Try and find a vector that starts where the last one ended
            for i in range(len(ov)):
                cv = ov[i]  # current vector
                # don't go back the same way
                if (pv == cv) or (pv == -cv):
                    continue
                if cv.s == pd or cv.d == pd:
                    if cv.d == pd:
                        ov[i] = -cv
                    num_simplified += 1
                    self._l.debug('[M] %s: %s' % (pd, ov[i]))
                    break
            else:
                # no match - append the closest vector,
                closest_idx = -1
                closest_distance = 999999  # should be int max or something like that

                for i in range(len(ov)):
                    cv = ov[i]
                    dist1 = distance(pd, cv.s)
                    dist2 = distance(pd, cv.d)
                    if dist1 < closest_distance:
                        closest_idx = i
                        closest_distance = dist1
                    if dist2 < closest_distance:
                        closest_idx = i
                        closest_distance = dist2
                        ov[i] = -cv
                i = closest_idx
                if i != 0:
                    num_simplified += 1
                    self._l.debug('[C] %s: %s' % (pd, ov[i]))
            nv.append(ov[i])
            pv = ov[i]
            pd = pv.d
            del ov[i]
        self._l.debug('Simplified %d paths' % num_simplified)
        return nv
