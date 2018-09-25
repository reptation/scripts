#!/bin/bash


# TODO find way to save these to environment variables, perhaps with some post-processors?
VAGRANT_SSH_PORT="2200"
VAGRANT_IDENTITY_FILE=$PWD$(find . | grep private | sed 's/\.\//\//')
VAGRANT_HOSTNAME="127.0.0.1"
VAGRANT_USER="vagrant"


NEW_ENTRY="
Host jenkins-master
        User "$VAGRANT_USER"
	Port "$VAGRANT_SSH_PORT"
	Hostname "$VAGRANT_HOSTNAME"
	IdentityFile "$VAGRANT_IDENTITY_FILE" 
"

echo "$NEW_ENTRY" >> ~/.ssh/config

