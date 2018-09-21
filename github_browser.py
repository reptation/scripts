#!/usr/bin/python
import requests
import sys

user=sys.argv[1]
file_path=sys.argv[2]

def get_content_url(user, file_path):
  first='https://api.github.com/repos/'
  second=user
  third="scripts/contents/"
  fourth=file_path
  the_url_seq=(first,second,third,fourth)
  print(the_url_seq)
  url="".join(the_url_seq)
  print(url)
  return(url)
  # example usage: prints out the script text
  #requests.get(requests.get('https://api.github.com/repos/reptation/scripts/contents/.bash_aliases').json()['download_url']).text

  # todo turn into function that takes name of user, name of file path to return script text"


get_content_url(user, file_path)
