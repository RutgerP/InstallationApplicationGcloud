#!/bin/bash
#Script to start packer

cd /var
sudo git clone https://github.com/KoenHaemels/InstallationApplicationGcloud.git
cd InstallationApplicationGcloud/
/bin/sed -i "s|accountFILE|${HOME}/gcloud-service-key.json|g" Credits/template.json
/bin/sed -i "s/projectID/"${PROJECT_ID_GCLOUD}"/g" Credits/template.json
./main.sh
