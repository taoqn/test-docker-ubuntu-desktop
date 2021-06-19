FROM dorowu/ubuntu-desktop-lxde-vnc
USER root
RUN apt-get update -y

ARG PORT

EXPOSE ${PORT}
