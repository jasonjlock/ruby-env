# Ruby Development Environment

A Ruby development environment using Docker Compose.

## Getting Started

Download and install Docker for [Mac](https://www.docker.com/docker-mac) or [Windows.](https://www.docker.com/docker-windows)

Clone this repository:

```
git clone https://github.com/jasonjlock/ruby-env.git
```

Change directories to the new repository:

```
cd ruby-env
```

## How To Use

Start the Docker containers:

> Running this step for the first time builds the container images.
> This process can take a while.

```
docker-compose up
```

this starts Nginx and Ruby containers. Nginx is a reverse proxy
passing requests to the Ruby server.

## What Next

While the containers are running, visit http://localhost in your browser.

Add [dependencies](http://bundler.io/v1.5/gemfile.html), write some code, and run it:
```
docker exec -it rubyenv_app_1 ruby your_code.rb
```

Stop the running containers:
```
docker-compose down
```

## Helpful Resources

* [Docker Compose](https://docs.docker.com/compose/reference/)
* [Docker Cleanup Commands](https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes)
* [Nginx Reverse Proxy](https://www.nginx.com/resources/admin-guide/reverse-proxy/)

