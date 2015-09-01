docker-crond
============

This repository contains a Dockerfile of Crond (Cronie) for Docker's automated build published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download the [automated build](https://registry.hub.docker.com/u/uqlibrary/docker-crond/) from the public [Docker Hub Registry](https://registry.hub.docker.com/): 
   `docker pull uqlibrary/docker-crond:2`

   (or, you can build an image from Dockerfile: `docker build -t uqlibrary/docker-crond:2 .)

### Usage

1. Create your own crontab file to replace the demo template crontab in image (ensure that the file ownership is `root:root` and permissions is `644`)

2. Start the container (with custom crontab included via volume mount):

    ```sh
    docker run -d -v <crontab>:/etc/crontab uqlibrary/docker-crond:2
    ```

All reporting that would normally go to email will be sent to syslog and can be seen using `docker logs <container>`
