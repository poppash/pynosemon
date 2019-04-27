# Pynosemon
Docker image which integrates `unittest`, `nose` and `nodemon` to easily test your code *continuously*.

## Requirements
- Docker
- Some Unix shell (tested using `sh`)

## Installation
Just make sure that `docker container run --rm hello-world` doesn't return anything funny.

## Quickstart
Given that `./src` contains your code (and its tests), run `docker container run -t -v $(pwd)/src:/src poppash/pynosemon /src`. 

- This image extends from the `python:3.7-alpine` base image
- tty (`-t`) allows us to quit `nodemon` using `CTRL+C`

## Configuration
To use a different Python version, clone this repo and build the image specifying build-time variable `PYTAG`.
```sh
docker image build --build-arg PYTAG=2.7 -t pynosemon . && \
docker container run -t -v $(pwd)/src:/src pynosemon /src
```

Note that you could also set build-time variable `ALPINETAG`, as long as it's [supported](https://hub.docker.com/_/python).

## Credits
Inspired by [this](https://stackoverflow.com/a/49435131) Stack Overflow answer. Thanks, [bkinsey808](https://meta.stackoverflow.com/users/2953703/bkinsey808)!
