#!/bin/bash
echo Open http://localhost:3000/ by browser.
echo Press Ctrl+C to exit.
docker run --name rails_by_docker_container -p 3000:3000 -v `pwd`/website:/website rails_by_docker_image
docker container rm rails_by_docker_container
