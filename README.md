# Keycloak for Raspberry Pi

[![dockeri.co](http://dockeri.co/image/marhan/rpi-keycloak)](https://registry.hub.docker.com/u/marhan/rpi-keycloak/)

This Docker image provides [Keycloak](http://keycloak.jboss.org/)

### Build Details
- [Source Repository](https://github.com/marhan/docker-rpi-keycloak)
- [Dockerfile](https://github.com/marhan/docker-rpi-keycloak/blob/master/Dockerfile)
- [DockerHub] (https://registry.hub.docker.com/u/marhan/rpi-keycloak/)


#### Build the Docker Image
```bash
make build
```

#### Push the Docker Image to the Docker Hub
* First use a `docker login` with username, password and email address
* Second push the Docker Image to the official Docker Hub

```bash
make push
```

### Run Details
```
docker run --name keycloak --privileged -d -p 8080:8080 -p 9990:9990 marhan/rpi-keycloak
```

### Login

- Open http://ADDRESS:8080 in browser
- Login to Administration Console as 'admin:admin'
