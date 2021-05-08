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
 
#### 4. Verify the application
###### Go to `http://localhost:8080/actuator/info` in browser

```json
{
"app": {
    "name": "template-app",
    "description": "Template Spring Boot project for doulevo",
    "version": "0.0.1-SNAPSHOT",
    "encoding": "UTF-8",
    "java": {
        "version": "1.8.0_121"
        }
    }
}
```

###### Go to `http://localhost:8080/actuator/health` in browser

```json
{
    "status": "UP",
    "components": {
    "diskSpace": {
        "status": "UP",
        "details": {
            "total": 62725787648,
            "free": 55338848256,
            "threshold": 10485760,
            "exists": true
        }
    },
    "ping": {
        "status": "UP"
        }
    }
}
```