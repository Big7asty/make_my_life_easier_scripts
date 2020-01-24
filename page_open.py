#!/usr/bin/python3

####################################################################
#								   #
# Short script for opening multiple pages with appendable variable #
#        Word/number list required named 'appIdList.txt            #
#								   #
####################################################################

import os
import time

def openPages():
    with open('appIdList.txt', 'r+') as f:
        contents = [x.strip() for x in f.readlines()]
        counter = 0
        while counter < len(contents):
            file = contents[counter]
            openWindows = 'firefox https://url.com' + str(file)		# URL and variable set here
            os.system(openWindows)
            counter += 1
    return()

openPages()

