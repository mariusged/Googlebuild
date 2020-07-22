#!/bin/bash
echo "Hello World"
ssh-keyscan -H 94.130.59.82 >> ~/.ssh/known_hosts
ssh root@4.130.59.82 'cd /var/Wordpress/ && ./restart.sh'
