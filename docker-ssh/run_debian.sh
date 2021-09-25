#!/bin/bash

set -ex

sshport='3000'
docker run -dit -p ${sshport}:22 -v /root/docker_debian:/home/share/ --restart=always --name debian_ssh kr1510/debian_ssh_riscv:v1.1