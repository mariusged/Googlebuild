#!/bin/bash
apk add openssh-client
eval $(ssh-agent -s)
mkdir -p ~/.ssh
chmod 700 ~/.ssh
