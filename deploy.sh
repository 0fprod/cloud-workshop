#!/bin/bash

HOST="3.248.209.181"
USER="ec2-user"
KEY="key-franjpr.pem"

ssh -i $KEY $USER@$HOST \
  "sudo yum install docker -y && sudo service docker start && sudo docker pull franjpr/my-node-server && sudo docker run -d -p 80:8080 franjpr/my-node-server"