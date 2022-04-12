## Docker

Data that is computed during a docker run is not stored anywhere. It gets deleted when the docker container gets terminated.
If we want the data to be stored persistantly then we have to mount a volume.

Docker has layered architecture, which means that the commands are run in a sequential manner.
Second command is based off of first command.

All the layers are cached, so after failure is a particular step and when we run again the previous steps are cached and not run again.

### commands

```sh
docker ps #docker	
docker run ubuntu
```

After the service running in the container finishes, the container exits but dead container still remains
the program that runs in the docker image is present in CMD
after stopping container if we run `docker ps`, we will see stopped container

```sh
docker run ubuntu sleep 5
```

in `ubuntu's docker image` the CMD has [bash], so the image expects a basch command
if we don't provide a bash command it exits


```sh
FROM Ubuntu
CMD sleep 5 

#or

CMD ["sleep", "5"] #json form, command followed by input parameter
```

by doing so we override the CMD present in the docker base image

```sh
ENTRYPOINT["sleep"]
```

The difference between `CMD` and `ENTRYPOINT` is that, when a dockerfile has `CMD`
and we run it like `docker run image-name sleep 10` it replaces the CMD with `sleep 10`

With ENTRYPOINT, when we run `docker run image-name 10` what we give is given as input

If we miss giving input value then we get the error "missing operand"
to give default value

```sh
FROM Ubuntu
ENTRYPOINT ["sleep"]
CMD["5"]
```

docker run ubuntu-sleeper 10 
 	