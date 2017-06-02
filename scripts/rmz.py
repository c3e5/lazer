#!/usr/bin/env python
'''
Remove the Z-Axis commands and parameters from an NGC file

Usage:
    rmz.py --in=<infile> --out=<outfile>
'''
import docopt
import re

zcmd_pattern = re.compile(r'G\d+\sZ[-]\d+\.\d+( \(.*\))?\n')
zparam_pattern = re.compile(r'\s+Z-?\d+\.\d+ *')


def modify_line(line):
    if zcmd_pattern.match(line):
        return None
    line = zparam_pattern.sub(' ', line)
    return line


def rmz(infile, outfile):
    with file(outfile, 'w') as fo:
        with file(infile, 'r') as fi:
            for line in fi.readlines():
                modified = modify_line(line)
                if modified:
                    fo.write(modified)


def main():
    opts = docopt.docopt(__doc__)
    infile = opts['--in']
    outfile = opts['--out']
    if infile == outfile:
        print('infile should not be the same as outfile!')
    rmz(infile, outfile)


if __name__ == '__main__':
    main()
