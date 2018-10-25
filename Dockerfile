# Author : Ramit Mitra
# Copyright : [Ramit]Mitra, 2018
# License : MIT
# About : Jenkins LTS with Docker CE 18 preinstalled as a single DinD container.
FROM jenkins/jenkins:lts
MAINTAINER ramit.mitra@gmail.com
# docker ce version to run in this jenkins container
# versions available can be found at https://download.docker.com/linux/static/stable/x86_64
ARG DOCKER_CLIENT=docker-18.06.1-ce.tgz

USER root
RUN cd /tmp/ && \
    curl -sSL -O https://download.docker.com/linux/static/stable/x86_64/${DOCKER_CLIENT} \
    && tar zxf ${DOCKER_CLIENT} \
    && mkdir -p /usr/local/bin \
    && mv ./docker/docker /usr/local/bin \
    && chmod +x /usr/local/bin/docker \
    && rm -rf /tmp/*