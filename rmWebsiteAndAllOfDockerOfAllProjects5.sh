#!/bin/bash
echo sudo rm -r website
sudo rm -r website
docker system prune -a
echo Also you can remove only you need https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
