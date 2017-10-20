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
        self.w = float(x)
        self.h = float(y)

    def X(self):
        return Point(self.x, 0)

    def Y(self):
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

    def __init__(self, s, d):
        self.s = s
        self.d = d
        if d.x - s.x != 0:
            self.m = ((d.y - s.y) / (d.x - s.x))
        else:
            self.m = 0
        self.b = s.y - (self.m * s.x)

    def y_for_x(self, x):
        return self.m * x + self.b

    def x_for_y(self, y):
        return (y - self.b) / self.m

    def point_for_y(self, y):
        x = self.x_for_y(y)
        return Point(x, y)

    def point_for_x(self, x):
        y = self.y_for_x(x)
        return Point(x, y)

    def __neg__(self):
        return Vector(self.d, self.s)

    def __add__(self, other):
        if isinstance(other, Vector):
            return Vector(self.s + other.s, self.d + other.d)
        elif isinstance(other, Point):
            return Vector(self.s + other, self.d + other)
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
