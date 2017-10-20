#!/usr/bin/env python
'''
Generate a g-code pattern to create a resistor bender

Usage: resistor_bender.py

+------------------------------+   <---- border
|                              |
|           +------+           |
==========--|middle|--==========
=========---| box  |---=========
========----|      |----========
=======-----|      |-----=======
======------|      |------======
=====-------|      |-------=====
====--------|      |--------====
===---------|      |---------===
==----------|      |----------==
=-----------|      |-----------=
|           +------+           |
|                              |
+------------------------------+


                /--------\
               /          \
              /  +------+  \
             /=--|middle|--=\
            /=---| box  |---=\
           /=----|      |----=\
          /=-----|      |-----=\
         /=------|      |------=\
        /=-------|      |-------=\
       /=--------|      |--------=\
      /=---------|      |---------=\
     /=----------|      |----------=\
    /=-----------|      |-----------=\
   /             +------+             \
  /                                    \
 /--------------------------------------\


'''
import logging

from simplifier import PathSimplifier
from generator import GCodeGenerator
from vectors import Vector, Point, add_to_vectors


logging.basicConfig(level=logging.DEBUG)


class ResistorBenderPattern(object):
    '''All measured in mm'''

    def __init_old__(self):
        self.resistor_length = 6
        self.bend_length_min = 4
        self.bend_length_max = 10
        self.bend_length_step = 1
        self.bend_count = (self.bend_length_max - self.bend_length_min + 1) / self.bend_length_step
        self.bend_cut_height = 0.4
        self.spacing_between_lines = 4
        self.spacing_middle_box_top = 5
        self.spacing_middle_box_bottom = 5
        self.spacing_left = 2
        self.spacing_right = 2
        self.spacing_side = 5
        middle_box_height = (self.bend_count + 1) * self.spacing_between_lines
        self.middle_box_dim = Point(self.resistor_length, middle_box_height)
        self.middle_box_loc = Point(self.spacing_left + self.bend_length_max, self.spacing_middle_box_top)
        self.dim = self.middle_box_loc + self.middle_box_dim + Point(self.bend_length_max + self.spacing_right, self.spacing_middle_box_bottom)

    def __init__(self):
        self.resistor_length = 6
        self.bend_length_min = 4
        self.bend_length_max = 10
        self.bend_length_step = 1
        self.bend_count = (self.bend_length_max - self.bend_length_min + 1) / self.bend_length_step
        self.bend_cut_height = 0.4
        self.distance_between_bends = 6
        self.margin_top = self.margin_bottom = 10
        self.margin_sides = 7

    def get_bend_y(self, i):
        return self.margin_top + i * self.distance_between_bends

    def get_bend_length(self, i):
        return self.bend_length_min + (i * self.bend_length_step)

    def generate_border(self, fn):
        '''
        border of the entire device
        since the border is diagonal, it takes some computation ...
        also, in order to improve the cutting time, we need to modify the diagonals,
        so they are not emitted (fn) here.
        '''
        sample_vector = Vector(Point(self.bend_length_max, 0), Point(self.bend_length_max - self.bend_length_step, self.distance_between_bends))
        left_m = sample_vector.m
        height = (self.bend_count - 1) * self.distance_between_bends + self.margin_top + self.margin_bottom
        left_b = height
        left_vector = Vector(Point(0, height), Point((0 - left_b) / left_m, 0))

        # find the ending point of the right side of the first bend
        first_bend_y = self.get_bend_y(0)
        first_bend_start_x = left_vector.x_for_y(first_bend_y)
        first_bend_ending_x = first_bend_start_x + (self.margin_sides + self.bend_length_min) * 2 + self.resistor_length

        # find the ending point of the right side of the second bend
        next_bend_y = self.get_bend_y(1)
        next_bend_start_x = left_vector.x_for_y(next_bend_y)
        next_bend_ending_x = next_bend_start_x + (self.margin_sides + self.bend_length_min + self.bend_length_step) * 2 + self.resistor_length

        # now create the vector to calculate the formula
        refv = Vector(Point(first_bend_ending_x, first_bend_y), (Point(next_bend_ending_x, next_bend_y)))
        right_vector = Vector(refv.point_for_y(height), refv.point_for_y(0))

        # upper border
        v = Vector(left_vector.point_for_y(0), right_vector.point_for_y(0))
        fn(v)
        v = Vector(left_vector.point_for_y(height), right_vector.point_for_y(height))
        fn(v)

        self.dim = Point(right_vector.x_for_y(height), height)
        self.left_vector = left_vector
        self.right_vector = right_vector

    def generate_resistor_box(self, fn):
        '''this is the box in the middle, when the resistor body rests'''
        w = self.resistor_length
        h = self.dim.h - ((self.margin_top + self.margin_bottom) / 2)
        x = (self.dim.w - self.resistor_length) / 2
        y = self.margin_top / 2
        for v in do_square(Point(x, y), Point(w, h)):
            fn(v)

    def generate_bending_cuts(self, fn):
        '''Generate the cuts for the resistor bending'''
        prev_left = self.left_vector.point_for_y(0)
        prev_right = self.right_vector.point_for_y(0)
        for i in range(self.bend_count):
            y = self.get_bend_y(i)
            y1 = y - self.bend_cut_height / 2
            y2 = y + self.bend_cut_height / 2

            # left part
            xend = self.left_vector.x_for_y(y) + self.margin_sides
            p1 = self.left_vector.point_for_y(y1)
            p2 = Point(xend, y1)
            p3 = Point(xend, y2)
            p4 = self.left_vector.point_for_y(y2)

            fn(Vector(p1, p2))
            fn(Vector(p2, p3))
            fn(Vector(p3, p4))
            # add diagonal part the comes above it
            fn(Vector(prev_left, p1))
            prev_left = p4

            # right part
            xstart = self.right_vector.x_for_y(y) - self.margin_sides
            p1 = self.right_vector.point_for_y(y1)
            p2 = Point(xstart, y1)
            p3 = Point(xstart, y2)
            p4 = self.right_vector.point_for_y(y2)

            fn(Vector(p1, p2))
            fn(Vector(p2, p3))
            fn(Vector(p3, p4))
            # add diagonal part the comes above it
            fn(Vector(prev_right, p1))
            prev_right = p4

        fn(Vector(prev_left, self.left_vector.point_for_y(self.dim.h)))
        fn(Vector(prev_right, self.right_vector.point_for_y(self.dim.h)))

    def giterate(self, fn):
        self.generate_border(fn)
        self.generate_resistor_box(fn)
        self.generate_bending_cuts(fn)


def do_square(start, dim):
    return [
        Vector(start, start + dim.X()),
        Vector(start + dim.X(), start + dim),
        Vector(start + dim, start + dim.Y()),
        Vector(start + dim.Y(), start),
    ]


def main():
    cut_feed = 20
    passing_feed = 800
    outfilename = 'bender.ngc'
    logging.getLogger('MainApp').info('Gcode file name: %s' % (outfilename))
    p = ResistorBenderPattern()
    s = PathSimplifier()
    comment = '''Generated by resistor_bender.py'''
    g = GCodeGenerator(open(outfilename, 'w'), comment, cut_feed, passing_feed)
    p.giterate(s.add_vector)
    vectors = s.simplify()
    #
    # adjust all vectors to be negative only
    #
    vectors = add_to_vectors(vectors, -p.dim)
    g.generate(vectors)


if __name__ == '__main__':
    main()
