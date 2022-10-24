#!/bin/sh
chmod 700 etc/munge/munge.key
chown 999 /etc/munge/munge.key
mkdir /node_logs
chmod 700 /node_logs
useradd ray -u 42
su -s /bin/bash -c "munged --key-file /etc/munge/munge.key" munge
su -c "/usr/sbin/slurmd -Dvvv -s"
#su -c "/bin/bash" 