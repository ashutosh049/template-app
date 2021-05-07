# doulevo-user-service

#### Prerequisite
- Docker desktop
- Maven(3.3+)

#### 1. Building the project
In project root dir:-

`mvn clean install`


#### 2. Building the docker image
In project root dir:-


```jshelllanguage
docker build --no-cache --build-arg SPRING_PROFILES_ACTIVE='dev' --pull -t doulevo/doulevo-template-app:0.0.1 .
```


#### 3. Run the container

```jshelllanguage
docker run -d --name=doulevo-template-app -p=80:80 doulevo/doulevo-template-app:0.0.1
```

You can also view the logs as:
```jshelllanguage
docker logs -f doulevo-template-app
```

#### 5. Stop the container
 `docker stop doulevo-template-app`