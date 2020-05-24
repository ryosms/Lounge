# Lounge

containerized [yukizuri](https://github.com/a-know/yukizuri)

### Docker build

```console
$ pwd
/path/to/Lounge
$ docker build -t yukizuri -f docker/Dockerfile .
```

### Deploy

#### docker-compose

##### Getting started

1. AWS Account and access key.
1. Copy and rename `sample.env` to `.env`
1. Edit the `.env` file for your environment.
1. Build the docker image.
1. Launch the container.
1. Run commands to deploy.

##### build image and launch container

```console
$ docker-compose build
$ docker-compose up -d
```

Or you can use one command below.

```console
$ docker-compose up -d --build
```

##### exec commands to deploy in container

```console
$ docker-compose exec deploy bash
# aws cloudformation deploy ~~~
```

