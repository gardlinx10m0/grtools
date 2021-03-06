#sample commands for docker

docker container ls
docker exec -ti [container-id] bash 


docker pull jenkins/jenkins:lts
docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
#docker run with "-d"   - RUN it deatached
#docker run with "--name" - to specify your cont name
#docker run with "--link [cont-name]" - links (networking) one container to another
#docker run with "-v /home/sam/date:/date" points mother mathine volume to docker volume (persistent)

#IMAGES
#see docker images
docker images
#to remove docker image
docker rmi [cont-id]
#search for image
docker search [image-name] 

#see all containers (including stopped)
docker ps -a

#CREATE NEW IMAGE based on existing (commit)
#creates NEW IMAGE based on existing modified container
docker commit [container-id]
OR
docker commit [container-id] [new-image-name]   
#tagging image (naming it) - useful with commit
docker tag [cont-id] [image-name]


#see logs
docker logs [container-name]

docker kill [container-name]  - stops
docker rm [container-name] - removes


! -pack dependencies inside !
! -dont leave important things in unnamed stopped containers !
! -volumes are not part of images 
