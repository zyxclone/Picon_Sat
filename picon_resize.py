#!/usr/bin/env python

import Image
import os, sys

def resizeImage(infile, dir, output_dir="", size=(440,264)):
     outfile = os.path.splitext(infile)[0]
     extension = os.path.splitext(infile)[1]

     if extension.lower()!= ".png":
        return

     if infile != outfile:
        try :
            im = Image.open(dir+os.sep+infile)
            im.thumbnail(size, Image.ANTIALIAS)
            im.save(output_dir+os.sep+outfile+extension,"PNG")
        except IOError:
            print "cannot reduce image for ", infile


if __name__=="__main__":
    dir = os.getcwd()

    if len(sys.argv[1:]) > 0:
        args = sys.argv[1:]

        if args[0] == "-d":
            if args[1]!="./":
                dir = args[1]

    output_dir = dir+os.sep+"picon"
    if not os.path.exists(output_dir):
        os.mkdir(output_dir)

    for file in os.listdir(dir):
        resizeImage(file,dir,output_dir=output_dir)
