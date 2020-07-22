#!/bin/bash
apt-get install openssh-server
systemctl enable ssh
systemctl start ssh
