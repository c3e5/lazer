import logging
from math import sqrt


def distance(p1, p2):
    distance_x = p1[0] - p2[0]
    distance_y = p1[1] - p2[1]
    return sqrt(distance_x ** 2 + distance_y ** 2)


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
        ov = self._vectors[1:]  # copy of vector array
        # currently we start fromthe first in the ov
        pv = self._vectors[0]
        pd = pv[1]
        nv = [pv]  # new vector array
        while ov:
            # Try and find a vector that starts where the last one ended
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
                closest_idx = -1
                closest_distance = 999999  # should be int max or something like that
                for i in range(len(ov)):
                    dist1 = distance(pd, ov[i][0])
                    dist2 = distance(pd, ov[i][1])
                    if dist1 < closest_distance:
                        closest_idx = i
                        closest_distance = dist1
                    if dist2 < closest_distance:
                        closest_idx = i
                        closest_distance = dist2
                        ov[i] = (ov[i][1], ov[i][0])
                i = closest_idx
                if i != 0:
                    num_simplified += 1
            nv.append(ov[i])
            pd = ov[i][1]
            pv = ov[i]
            del ov[i]
        self._l.debug('Simplified %d paths' % num_simplified)
        return nv
