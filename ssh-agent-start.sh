#!/bin/sh

MY_KEY=$1

eval $(ssh-agent -s)

ssh-add ~/.ssh/$MY_KEY
