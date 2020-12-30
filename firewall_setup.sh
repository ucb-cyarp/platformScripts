#!/bin/bash

#defaults
sudo ufw default deny incoming
sudo ufw default allow outgoing

#allow berkeley ssh
sudo ufw allow from 128.32.0.0/16 to any port 22 proto tcp
sudo ufw allow from 136.152.0.0/16 to any port 22 proto tcp
sudo ufw allow from 169.229.0.0/16 to any port 22 proto tcp
sudo ufw allow from 192.31.95.0/24 to any port 22 proto tcp
sudo ufw allow from 192.31.105.0/24 to any port 22 proto tcp
sudo ufw allow from 192.31.161.0/24 to any port 22 proto tcp
sudo ufw allow from 192.58.221.0/24 to any port 22 proto tcp
sudo ufw allow from 192.101.42.0/24 to any port 22 proto tcp
sudo ufw allow from 192.107.102.0/24 to any port 22 proto tcp
sudo ufw allow from 10.0.0.0/8 to any port 22 proto tcp
sudo ufw allow from 192.168.2.0/24 to any port 22 proto tcp

#disallow other ssh (put rule after allows)
sudo ufw deny 22

#enable firewall
sudo ufw enable
