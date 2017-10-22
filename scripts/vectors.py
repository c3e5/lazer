'''
Common utilities for generating / manipulating vectors
'''


class Point(object):

    _ZERO = None

    @classmethod
    def ZERO(cls):
        if Point._ZERO is None:
            Point._ZERO = Point(0, 0)
        return Point._ZERO

    def __init__(self, x, y):
        self.x = float(x)
        self.y = float(y)
        self.w = self.x
        self.h = self.y

    def X(self):
        '''
        :return: a point with the x as this point and 0 as y
        '''
        return Point(self.x, 0)

    def Y(self):
        '''
        :return: a point with the y as this point and 0 as x
        '''
        return Point(0, self.y)

    def H(self):
        return self.Y()

    def W(self):
        return self.X()

    def __add__(self, other):
        if isinstance(other, Vector):
            return other + self
        elif isinstance(other, Point):
            return Point(self.x + other.x, self.y + other.y)
        else:
            raise Exception('can add type %s to Point' % (type(other)))

    def __neg__(self):
        return Point(-self.x, -self.y)

    def __eq__(self, other):
        return isinstance(other, Point) and (other.x == self.x) and (other.y == self.y)

    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result

    def __str__(self):
        return '(%s, %s)' % (self.x, self.y)


class Vector(object):

    def __init__(self, s, d, attrs=None):
        '''
        :param s: source point
        :param d: destination point
        :param attrs: attributes dictionary
        '''
        self.s = s
        self.d = d
        if d.x - s.x != 0:
            self.m = ((d.y - s.y) / (d.x - s.x))
        else:
            self.m = 0
        self.b = s.y - (self.m * s.x)
        self.attrs = {} if attrs is None else attrs.copy()

    def y_for_x(self, x):
        '''
        get the y value for a given x on this vector
        '''
        return self.m * x + self.b

    def x_for_y(self, y):
        '''
        get the x value for a given y on this vector
        '''
        return (y - self.b) / self.m

    def point_for_y(self, y):
        '''
        get the point for a given y on this vector
        '''
        x = self.x_for_y(y)
        return Point(x, y)

    def point_for_x(self, x):
        '''
        get the point for a given x on this vector
        '''
        y = self.y_for_x(x)
        return Point(x, y)

    def __neg__(self):
        return Vector(self.d, self.s, self.attrs)

    def __add__(self, other):
        if isinstance(other, Vector):
            return Vector(self.s + other.s, self.d + other.d, self.attrs)
        elif isinstance(other, Point):
            return Vector(self.s + other, self.d + other, self.attrs)
        else:
            raise Exception('can add type %s to Vector' % (type(other)))

    def __eq__(self, other):
        return isinstance(other, Vector) and (other.s == self.s) and (other.d == self.d)

    def __ne__(self, other):
        result = self.__eq__(other)
        if result is NotImplemented:
            return result
        return not result

    def __str__(self):
        return '%s -> %s' % (self.s, self.d)


def add_to_vectors(vs, point):
    return [v + point for v in vs]
