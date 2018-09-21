#!/usr/bin/python
import requests

# example usage: prints out the script text
requests.get(requests.get('https://api.github.com/repos/reptation/scripts/contents/.bash_aliases').json()['download_url']).text

# todo turn into function that takes name of user, name of file path to return script text"

