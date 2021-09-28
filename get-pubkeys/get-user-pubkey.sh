#!/bin/bash

set -ex


useraccount="jiewu-plct"
containername="ubuntu_${useraccount}"


if [ ! -d "${useraccount}_pubkey" ]; then
  mkdir ${useraccount}_pubkey
fi


curl https://github.com/${useraccount}.keys > ./${useraccount}_pubkey/id_rsa.pub

docker cp ./${useraccount}_pubkey/id_rsa.pub ${containername}:/home/tester/.ssh/id_rsa.pub