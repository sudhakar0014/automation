This Directory contains 5 files including ReadMe.
1.  nginx_docker.yaml
     This is ansible Playbook which contains three tasks.
      1. Install the docker to the EC2 server via "docker.sh" script.
      2. Copy the Dockerfile to  the EC2 server.
      3. Build the dockerImage and Run the Container via "docker_build.sh" script.

2. Dockerfile
    Dockerfile of application(Ngnix)


3. docker.sh 
    This file contains the commands to install latest docker inside a server.


4. docker_build.sh
    This file Builds the Docker Image called "nginx_jsf" and Runs a container called "Nginx".


