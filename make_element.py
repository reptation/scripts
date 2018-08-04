#!/bin/python3

# take a file of images and wrap html tags around them.

import os
mylist = os.listdir('/path/to/img/')
#print(mylist)

mytag_pre = '<a class="test-popup-link" href="src/'
mytag_mid = '"><img src="src/thumbnails/'
my_tag_post = '" class="img-thumbnail" alt="Cinque Terre" width="304" height="236"></a>'

def add_html_tags(img_src):
   src = img_src
#   print(src)
   result = mytag_pre+src+mytag_mid+src+my_tag_post
   print(result)

for photo in mylist:
    add_html_tags(photo)

