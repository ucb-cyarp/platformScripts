#!/bin/bash
echo "Setting Up USRP Networking"
sudo ifconfig enp65s0f1 192.168.40.1 mtu 9000
sudo sysctl -w net.core.rmem_max=24862979
sudo sysctl -w net.core.wmem_max=24862979
