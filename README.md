## Build docker image kuraykaraaslan/ubuntu-nodejs
```bash
docker build -t kuraykaraaslan/ubuntu-nodejs .
```

## Run docker container kuraykaraaslan/ubuntu-nodejs
```bash
docker run -it kuraykaraaslan/ubuntu-nodejs
```

## Push docker image to docker hub
```bash
docker push kuraykaraaslan/ubuntu-nodejs
```

## IMPORTANT NOTES

It is important to note that the default command is not executed with an invocation of the shell. For example, the following will not work as the shell will not be invoked:

```bash
RUN ["/bin/bash", "-c", "echo I am now using bash!"]
```


