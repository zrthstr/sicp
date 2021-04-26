#!/usr/bin/env python3


def center_line_format(line):
    """  pretty prining """
    max_line_len = 80
    line = " ".join([str(a) for a in line])
    padding = " " * ((max_line_len - len(line)) // 2)
    return padding + line


def pasc(line):
    """for any given ast line, retuns next line"""

    for l in range(len(line)-1):
        line[l] = sum(line[l:l+2])
    return [1] + line



def main(n):
    start = [1]
    for _ in range(n):
        print(center_line_format(start))
        start = pasc(start)


if __name__ == "__main__":
    main(19)
