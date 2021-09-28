#!/bin/bash

set -ex

giturl="https://github.com/plctlab/riscv-lab-access.git"
account="D1-001-host"

git clone ${giturl}
docker cp ./riscv-lab-access/Nanjing/${account}.keys ubuntu_ssh:/home/tester/.ssh/id_rsa.pub



