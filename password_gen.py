#!/usr/bin/python3

########################################################
#					               #
#   Password generation for targeted password sprays.  #
#   Will prob add ConfigParser soon to parse wordlists #
#						       #
########################################################

word_list = ['Word1', 'Word2']		     #########################################################
numbers = '1234567890'			   ##							     #
uppers = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'     ##   Change any of these fields to suit your requirements  #
lowers = 'abcdefghijklmnopqrstuvwxyz'      ##							     #
specials = '!@#$%^&*()-_[{]}\|;:,<.>/?'     ##########################################################

def passwd_gen():
    for w in word_list:
        for n in numbers:
            for u in uppers:
                for l in lowers:
                    for s in specials:
                        password = w + n + u +l + s
                        print(password)
    return 0

passwd_gen()
