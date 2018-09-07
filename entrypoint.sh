#!/bin/bash

if [ ! -f /etc/ssh/ssh_host_rsa_key ] ; then
# Generate ssh key
    ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -q -N ""
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -q -N ""
    ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -q -N ""
    ssh-keygen -t dsa -f /etc/ssh/ssh_host_ed25519_key -q -N ""
fi
/bin/sshd -D
