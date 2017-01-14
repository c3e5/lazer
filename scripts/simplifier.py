import logging


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



