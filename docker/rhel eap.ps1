clear
d:
cd D:\workspace\devops\docker\rhel-eap
# Pull Fedora
docker pull fedora
#Build 
docker build -t fedora-wildfly .
# Run Image
#docker run -t -i ubuntu /bin/bash