#!/bin/bash

echo "sudo ufw allow from $1 to any port 8080 proto tcp"
echo "sudo ufw allow from $1 to any port 8081 proto tcp"
echo "sudo ufw allow from $1 to any port 8082 proto tcp"
echo "sudo ufw allow from $1 to any port 8050 proto tcp"

sudo ufw allow from $1 to any port 8080 proto tcp
sudo ufw allow from $1 to any port 8081 proto tcp
sudo ufw allow from $1 to any port 8082 proto tcp
sudo ufw allow from $1 to any port 8050 proto tcp

sudo ufw status
