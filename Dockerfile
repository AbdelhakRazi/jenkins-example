FROM jenkins/agent:latest
USER root
RUN apt-get update
RUN apt install -y python3 
RUN apt install -y python3-pip
USER jenkins
