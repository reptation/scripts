#!/bin/bash


# TODO find way to save these to environment variables, perhaps with some post-processors?
VAGRANT_PORT="2222"
VAGRANT_IDENTITY_FILE="/long/path/name/to/key"
VAGRANT_HOSTNAME="127.0.0.1"
VAGRANT_USER="vagrant"

NEW_ENTRY="
Host controlbox
        User "$VAGRANT_USER"
	Port "$VAGRANT_PORT"
	Hostname "$VAGRANT_HOSTNAME"
	IdentityFile "$VAGRANT_IDENTITY_FILE" 
"
echo "$NEW_ENTRY"


# TODO append entry to ssh/config
