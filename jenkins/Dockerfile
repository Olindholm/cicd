FROM jenkins/jenkins:lts-jdk11

# Create docker group and add jenkins
# Allows for running docker w/o sudo
USER root
RUN groupadd -g 999 docker
RUN usermod -aG docker jenkins

USER jenkins
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
