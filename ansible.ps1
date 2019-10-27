$SSH_PATH = "C:\Users\gille\.ssh"
$WORKSPACE = "D:\workspace\devops\ansible"
$PLAY = "docker_install"
$DOCKER_PASSWORD = ""
clear
D:
cd $WORKSPACE
docker run --rm -i `
    -v $SSH_PATH/:/tmp/.ssh `
    -v $WORKSPACE\plays:/ansible/playbook `
    -v $WORKSPACE\inventory:/etc/ansible `
    necrobraska/ansible-controller `
    ansible-playbook -i /etc/ansible/hosts.yml `
    "$PLAY.yml" --extra-vars "docker_password=$DOCKER_PASSWORD"