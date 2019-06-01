#!/usr/bin/env python3

import re
import sys

try:
    f = open(sys.argv[1], 'r', encoding="utf-8")
except IOError:
    e = "Can't open output file for writing: " + sys.argv[1]
    print( __file__, ":", e)
    sys.exit()

for ln in f.readlines():
    obj = re.search("(\\\\Output\\\\)",ln)
    if obj :
        print("find Output")
    
f.close



    
    