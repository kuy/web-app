[![CircleCI](https://circleci.com/gh/kuy/web-app/tree/master.svg?style=svg)](https://circleci.com/gh/kuy/web-app/tree/master)

# web-app

An example Dockerized web application using Sinatra/Ruby.

## Image

[netkuy/web-app](https://hub.docker.com/r/netkuy/web-app) on Docker Hub

## Run

```
docker run -d --name web-app -p 5678:5678 netkuy/web-app:1
```

## Development

### Build

```
docker build -t netkuy/web-app:1 .
```

### Run

```
docker run -d --name web-app -p 5678:5678 netkuy/web-app:1
```

### Push

```
docker push netkuy/web-app:1
```
