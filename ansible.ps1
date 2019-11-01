﻿$SSH_PATH = ""
$WORKSPACE = "D:\workspace\devops\ansible"
$PLAY = "docker_install"
clear
D:
cd $WORKSPACE
docker run --rm -i `
    -v $SSH_PATH/:/tmp/.ssh `
    -v $WORKSPACE\plays:/ansible/playbook `
    -v $WORKSPACE\inventory:/etc/ansible `
    necrobraska/ansible-controller `
    ansible-playbook -i /etc/ansible/hosts.yml `
    "$PLAY.yml"