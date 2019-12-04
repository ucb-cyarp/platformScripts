#!/bin/bash

SSH_CLIENT_IP=`echo $SSH_CONNECTION | awk '{ print $1}'`

echo "sudo ufw allow from ${SSH_CLIENT_IP} to any port 8080 proto tcp"
echo "sudo ufw allow from ${SSH_CLIENT_IP} to any port 8081 proto tcp"
echo "sudo ufw allow from ${SSH_CLIENT_IP} to any port 8082 proto tcp"
echo "sudo ufw allow from ${SSH_CLIENT_IP} to any port 8050 proto tcp"

sudo ufw allow from ${SSH_CLIENT_IP} to any port 8080 proto tcp
sudo ufw allow from ${SSH_CLIENT_IP} to any port 8081 proto tcp
sudo ufw allow from ${SSH_CLIENT_IP} to any port 8082 proto tcp
sudo ufw allow from ${SSH_CLIENT_IP} to any port 8050 proto tcp

sudo ufw status
