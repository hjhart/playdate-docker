# Playdate SDK Docker image

This docker image allows you to write playdate Lua code, and compile it without needing to install the SDK on your workstation. Obviously, no simulator can be run inside the docker image but after compiling you can grab the `.pdx/` directory and do with it what you want!

# Usage 

To compile a main.lua file in the current directory:

```
docker run -v $(pwd):$(pwd) -w $(pwd) --rm -it hjhart/playdate-sdk main.lua
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
