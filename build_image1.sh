#!/bin/bash
docker build -t rails_by_docker_image .
mkdir -p website
docker run --name rails_by_docker_temp_container -it rails_by_docker_image sh -c exit
docker cp rails_by_docker_temp_container:/website .
docker container rm rails_by_docker_temp_container
echo sudo chown -R $USER:$USER website
sudo chown -R $USER:$USER website
