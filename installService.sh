#!/bin/bash
rm -rf /srv/platformScripts
cp -r ../platformScripts /srv/platformScripts
chmod -R 755 /srv/platformScripts
chown -R root:root /srv/platformScripts
rm -f /etc/systemd/system/setupCPUForDSP.service
cp setupCPUForDSP.service /etc/systemd/system/.
chmod 755 /etc/systemd/system/setupCPUForDSP.service
chown root:root /etc/systemd/system/setupCPUForDSP.service
