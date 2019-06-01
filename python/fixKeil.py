#!/usr/bin/env python3

import re
import sys

try:
    fin = open(sys.argv[1], 'r', encoding="utf-8")
except IOError:
    e = "Can't open output file for writing: " + sys.argv[1]
    print( __file__, ":", e)
    sys.exit()

for ln in fin.readlines():
    obj = re.search(r'\\Output\\',ln)
    if obj :
        print("fix Output")
  
fin.close


    
    