#!/bin/bash

set -ex

sshport='2000'
docker run -dit -p ${sshport}:22 -v /root/docker_ubuntu:/home/share/ --restart=always --name ubuntu_ssh kr1510/ubuntu_ssh_riscv:v1.1
