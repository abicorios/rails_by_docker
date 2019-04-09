# rails_by_docker
It is the simple wey to develop the Ruby on Rails web-applicatins by the Docker.
# Requirements
Install the Docker https://docs.docker.com/install/
and do the postinstall steps https://docs.docker.com/install/linux/linux-postinstall/
# Use
```
git clone https://github.com/abicorios/rails_by_docker
cd rails_by_docker
./build_image1.sh
./run_container2.sh
```
See the result by the browser http://localhost:3000/

You can login into the running conatiner by other terminal window 
```
./login_in_running_container3.sh
```
You can edit the website source in the subfolder `website`, this folder is available on the host (`rails_by_docker/website`) and in container (`/website`), and the changes are bidirectional synced. If you cannot edit the files on the host, run
```
./chown4.sh
```
You can exit from running container by `exit`.
You can stop the running container by Ctrl+C (the container run before by `./run_container2.sh` in the first terminal window).
You can remove the website, the containers, the images
```
./rmWebsiteAndAllOfDockerOfAllProjects5.sh
```
Also the scripts are named with number, it is done to show the typical order of running (1 build, 2 run, 3 login, ...)
