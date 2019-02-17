# This cleans out Docker
clear
# docker ps --no-trunc -aqf "status=exited" | xargs docker rm
$exitedContainers = docker ps --no-trunc -aqf "status=exited"
foreach ($containers in $exitedContainers) {
    echo $containers;
    #docker rm $containers;
}

#docker image --no-trunc -aqf "dangling=true" | xargs docker rmi
#$danglingImages = docker image --no-trunc -aqf "dangling=true"
#foreach ($image in $danglingImages) {
#    echo $image ; 
#    #docker rmi $image ;
#}

#docker volume ls -qf "dangling=true" | xargs docker volume rm
$danglingVolumes = docker volume ls -qf "dangling=true"
foreach ($volume in $danglingVolumes) {
    echo $volume ; 
    #docker rmi $volume ;
}

docker image prune -a -f
docker container prune -f 
docker volume prune -f 
docker network prune -f 
docker system prune -a -f