#!/bin/bash
# https://alanedwardes.com/blog/posts/git-username-password-environment-variables/

echo username=$GIT_USERNAME
echo password=$GIT_PASSWORD

# git config credential.helper "/bin/bash ./credential-helper.sh"
