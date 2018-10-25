# jenkins-lts-dind

Jenkins LTS with Docker CE 18 preinstalled as a single DinD container

## Purpose

Readily available DinD conatiner for Jenkins LTS. Docker version available with this version is CE 18.06.1 (docker-18.06.1-ce). This container is useful if you want to use Jenkins to use docker service to build or, deploy projects to docker swarm, etc. 

### Prerequisites

If you're running docker your already sorted. This image can be used with docker-compose by adding, 
```
image: ramitmitra/jenkins-lts-dind
```
Example compose syntax :
```
jenkins:
    image: ramitmitra/jenkins-lts-dind
    privileged: true
    restart: on-failure
    stop_grace_period: 1m
    ports:
      - "8080:8080"
      - "32768:50000"
    deploy:
      replicas: 2
      update_config:
        parallelism: 2
        delay: 10s
      restart_policy:
        condition: on-failure
    volumes:
      - jenkins_data:/var/jenkins_home
```

## Availability

This image is available at docker hub at : [Ramit Mitra](https://github.com/ramit-mitra)

## Built With

* [Travis-CI](https://travis-ci.org)

## Authors

* **[Ramit Mitra](https://github.com/ramit-mitra)** - *Creator and Maintainer*

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Jenkins
* Docker
* Travis-CI
