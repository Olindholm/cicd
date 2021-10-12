FROM jenkins/jenkins:lts-jdk11

# Create docker group and add jenkins
# Allows for running docker w/o sudo
USER root
RUN groupadd -g 999 docker
RUN usermod -aG docker jenkins
USER jenkins

# Preinstall plugins
# https://github.com/jenkinsci/plugin-installation-manager-tool
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/plugins.txt
