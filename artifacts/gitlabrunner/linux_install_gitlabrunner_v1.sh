#!/bin/bash

#Get the URL parameter value.
GITLAB_URL=$1
REGISTRATION_TOKEN=$2

echo "Starting Gitlab Runner Installation"

echo "Using APT package manager."

echo "set repo location"
curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash

echo "Updating every installed package"
sudo apt-get -y update

sudo apt-get -y install gitlab-runner

echo "Registering Runner"

sudo gitlab-runner register --url $GITLAB_URL --registration-token $REGISTRATION_TOKEN