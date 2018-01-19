#!/bin/bash
export REAL_USER=tyson_swetnam
rm -rf /opt/cyverse-ez-docker
apt-get install -y ansible
ansible-pull -v -U https://github.com/cyverse/cyverse-ez-docker.git -d /opt/cyverse-ez-docker -i localhost -e ansible_docker_user=${REAL_USER} -f >> /var/log/cyverse-ez.log 2>&1
