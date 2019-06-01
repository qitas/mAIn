#!/usr/bin/env python3

import re
import sys

try:
    fin = open(sys.argv[1], 'r', encoding="utf-8")
    fout = open(sys.argv[2], 'w', encoding="utf-8")
except IOError:
    e = "Can't open output file for writing: " + sys.argv[1]
    print( __file__, ":", e)
    sys.exit()

#text = "JGood is a handsome boy, he is cool, clever, and so on..."
#print(re.sub(r'\s+', '-', text))

for line in fin.readlines():
    rall=re.compile(r'.*')
    #obj = re.search(r'\\Output\\',line)
    #folder_obj = re.sub(r'\\Output\\',r'\\obj\\',line)
    if re.search(r'\\Output\\',line):  
        fout.writelines( re.sub(r'\\Output\\',r'\\obj\\',line))   
        continue
    if re.search(r'\\LST\\',line):  
        fout.writelines( re.sub(r'\\LST\\',r'\\list\\',line))   
        continue
    #print(obj)
    #obj.replace('\\Output\\', '\\obj\\')
    #folder_obj = re.sub('<ListingPath>^[.]+^<ListingPath>',r'<ListingPath>.\\list\\</ListingPath>',line)  
    #print(obj)
    #obj.replace('\\Output\\', '\\obj\\')
    #if folder_obj:  
        #fout.writelines(folder_obj)     
        #buf = line.replace('\\Output\\', '\\obj\\')
        #print(buf)
        #print("fix Output")
    fout.writelines(line)


fin.close


    
    