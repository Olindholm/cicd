FROM jenkins/jenkins:lts-jdk11

# Require docker group id as input arg
ARG DOCKER_GROUP_ID
RUN test -n "$DOCKER_GROUP_ID" || (echo "DOCKER_GROUP_ID not set" && false)

# Create docker group and add jenkins
# Allows for running docker w/o sudo
USER root
RUN groupadd -g $DOCKER_GROUP_ID docker
RUN usermod -aG docker jenkins
USER jenkins

# Preinstall plugins
# https://github.com/jenkinsci/plugin-installation-manager-tool
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt
