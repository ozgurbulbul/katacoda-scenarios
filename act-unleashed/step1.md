# Getting started with Asynchronous Circuit Toolkit (ACT)

1. Deploy a docker container with the tools, and enter a shell

`docker run -it --rm -e DISPLAY="$DISPLAY" -p8015:8015/tcp -v $PWD:/work -v /tmp/.X11-unix:/tmp/.X11-unix eccloud/act`{{ execute }}
