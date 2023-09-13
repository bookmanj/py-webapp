# py-webapp 

## python hello world example

### Create image
```bash
docker build -t <DOCKER_IMAGE_TAG> .
```

## Run app

```bash
docker run --rm --name python-app \
      -p 8080:8080 \
      -d <DOCKER_IMAGE_TAG>
```
