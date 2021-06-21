FROM docker

USER root

RUN apk update
RUN apk -s add curl && apk -s add wget && apk -s add rpm
RUN apk -s add jenkins

EXPOSE 8080
