# Playdate SDK Docker image

This docker image allows you to write code in github codespaces, and compile it so that you can download it onto your physical device. Obviously, no simulator can be run inside the docker image but you can mount a volume to run it once the game is compiled.

# Usage 

To compile a main.lua file in the current directory:

```
docker run -v $(pwd):$(pwd) --rm -it hjhart/playdate-sdk main.lua
```

See the docker image here: https://hub.docker.com/repository/docker/hjhart/playdate-sdk

# Development

To build it:

```
script/build
```

To push it: 

```
script/push
```



TODO:

- [ ] Docker image size could be shrunk down. It is 160MB and doesn't bother trying to use alpine, yet.