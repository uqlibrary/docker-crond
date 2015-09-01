docker-crond
============

This repository contains a Dockerfile of Crond (Cronie) for Docker's automated build published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Installation

1. Install [Docker](https://www.docker.com/).

2. Download the [automated build](https://registry.hub.docker.com/u/uqlibrary/docker-crond/) from the public [Docker Hub Registry](https://registry.hub.docker.com/): 

   ```sh
   docker pull uqlibrary/docker-crond:3
   ```

   (or, you can build an image from Dockerfile: `docker build -t uqlibrary/docker-crond:3` .)

### Usage

1. Create a cron.d directory and place your own crontab file(s) inside it (ensure that ownership is `root:root` and file permissions are `644`)

   ```sh
   mkdir cron.d
   vi ./cron.d/mytestjob
   sudo chmod -R g-w ./cron.d
   sudo chown -R root:root ./cron.d
   ```

2. Start the container (with custom crontab included via volume mount):

   ```sh
   docker run -d -v ./cron.d:/etc/cron.d uqlibrary/docker-crond:3
   ```

3. All job outputs that would normally go to email is being caught by debug output and will be in `docker logs`

   ```sh
   docker logs -f <container>
   ```
