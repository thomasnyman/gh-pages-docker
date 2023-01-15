# GitHub Pages Docker

This repository contains a minimal, standalone Docker Compose setup for [GitHub Pages](https://github.com/github/pages-gem) suitable for theme development or building a website.

## Setup instructions

1. Install Docker Engine or Docker Desktop by following the [install instructions at docker.com](https://docs.docker.com/engine/install/)

2. Checkout the repository containing your GitHub Pages site to the project directory:

        $ cd gh-pages-docker
        $ git checkout https://github.com/<my_organization>/<my_site>

3. Set the `SITEDIR` environmental variable to the relative path to the site directory and start the docker container running a Jekyll instance using [Docker Compose](https://docs.docker.com/compose/):

        $ SITEDIR=./<my_site>  docker-compose up

4. Access the Jekyll instance at [localhost:4000](http://localhost:4000)

To temporarily stop the Jekyll instance use `docker-compose stop`:

     $ docker-compose stop

To stop the Jekyll instance and remove its resources use `docker-compose down`:

    $ docker-compose down

## License

The YAML files and Dockerfiles in this repository are licensed under the MIT License.

