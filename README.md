# Spark-Server-Docker

First you have to create a ```config.json``` file in ```config``` directory, you can run the following to copy the example files and change accordingly.
## One-line deployment:

```
$ docker run -d --name Spark -p 8000:8000 -v ./config/config.json:/app/config.json ghcr.io/b4iterdev/spark-server-docker
```
