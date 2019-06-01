#!/usr/bin/env python3

import re
import sys

try:
    fin = open(sys.argv[1], 'r+', encoding="utf-8")
except IOError:
    e = "Can't open output file for writing: " + sys.argv[1]
    print( __file__, ":", e)
    sys.exit()

#text = "JGood is a handsome boy, he is cool, clever, and so on..."
#print(re.sub(r'\s+', '-', text))

for line in fin.readlines():
    obj = re.search(r'\\Output\\',line)
    #obj = re.sub(r'\\Output\\',r'\\obj\\',ln)
    #print(obj)
    #obj.replace('\\Output\\', '\\obj\\')
    if obj:
        print(line)
        buf = line.replace('\\Output\\', '\\obj\\')
        print(buf)
        print("fix Output")
  
fin.close


    
    