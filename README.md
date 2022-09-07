# Playdate SDK Docker image

This docker image allows you to write code in github codespaces, and compile it so that you can download it onto your physical device. Obviously, no simulator can be run inside the docker image but you can mount a volume to run it once the game is compiled.

To build it:

```
docker build . --tag hjhart/playdate-sdk
docker push 
```

See the docker image here: https://hub.docker.com/repository/docker/hjhart/playdate-sdk


TODO:

- [ ] Docker image size could be shrunk down. It is 160MB and doesn't bother trying to use alpine, yet.