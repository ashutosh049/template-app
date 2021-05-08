# Doulevo Spring-Boot(2.4.5) template project

#### Prerequisite
- Docker desktop

#### 1. Building the docker image

```jshelllanguage
docker build --build-arg SPRING_PROFILES_ACTIVE='dev' --pull -t doulevo/doulevo-template-app:0.1 .
```

#### 2. Run the container

```jshelllanguage
docker stop doulevo-template-app; docker rm doulevo-template-app; docker run -d -v /home/doulevo-template-app/logs:/${HOME}/doulevo/doulevo-template-app/logs --name=doulevo-template-app -p=8080:8080 doulevo/doulevo-template-app:0.1; docker logs -f doulevo-template-app
```

#### 3. Stop the container
 `docker stop doulevo-template-app`