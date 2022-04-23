# platformScripts
Scripts for Setting Up or Interacting with CPU Platforms

This repository includes scripts intended to be run at startup to reduce OS jitter in conjunction with certain kernek boot options provided via grub such as isolcpus.
An example of such grub options is provided in [grub](grub).

The boot scripts are called by a systemd service [setupCPUForDSP.service](setupCPUForDSP.service) which can be installed with [installService.sh](installService.sh).

Please modify the script called by the systemd service, [setup.sh](setup.sh), allong with all scripts called internally by [setup.sh](setup.sh).

To run the service, execute `sudo systemctl start setupCPUForDSP`
To check the service status, execute `sudo systemctl status setupCPUForDSP`
To enable the service to run at system statup, execute `sudo systemctl enable setupCPUForDSP`
To disable the service from running at system statup, execute `sudo systemctl disable setupCPUForDSP`
To check the logs of the service, execute `journalctl -u setupCPUForDSP` 
