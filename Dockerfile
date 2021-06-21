FROM jetbrains/teamcity-server

FROM jenkins/jenkins:2.289.1-lts-jdk11
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update -y
RUN apt install -y nodejs
RUN node --version
RUN npm --version
RUN apt install -y build-essential
