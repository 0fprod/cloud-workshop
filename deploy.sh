#!/bin/bash

HOST="ec2-52-212-86-43.eu-west-1.compute.amazonaws.com"
USER="ec2-user"
KEY="./key-franjpr.pem"

ssh -i $KEY $USER@$HOST \
  "sudo yum install docker -y && sudo service docker start && sudo docker run -d -p 80:8080 --name franjpr franjpr/my-node-server"
