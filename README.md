# platformScripts
Zenodo Concept DOI: [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.6526467.svg)](https://doi.org/10.5281/zenodo.6526467)

Scripts for Setting Up or Interacting with CPU Platforms

## Setup
This repository includes scripts intended to be run at startup to reduce OS jitter in conjunction with certain kernek boot options provided via grub such as isolcpus.
An example of such grub options is provided in [grub](grub).

The boot scripts are called by a systemd service [setupCPUForDSP.service](setupCPUForDSP.service) which can be installed with [installService.sh](installService.sh).

Please modify the script called by the systemd service, [setup.sh](setup.sh), allong with the script called internally by [setup.sh](setup.sh), [setup-3_7ghz.sh](setup-3_7ghz.sh)

## Using the systemd service
  - To run the service, execute `sudo systemctl start setupCPUForDSP`
  - To check the service status, execute `sudo systemctl status setupCPUForDSP`
  - To enable the service to run at system statup, execute `sudo systemctl enable setupCPUForDSP`
  - To disable the service from running at system statup, execute `sudo systemctl disable setupCPUForDSP`
  - To check the logs of the service, execute `journalctl -u setupCPUForDSP` 

## Citing This Software:
If you would like to reference this software, please cite Christopher Yarp's Ph.D. thesis.

*At the time of writing, the GitHub CFF parser does not properly generate thesis citations.  Please see the bibtex entry below.*

```bibtex
@phdthesis{yarp_phd_2022,
	title = {High Speed Software Radio on General Purpose CPUs},
	school = {University of California, Berkeley},
	author = {Yarp, Christopher},
	year = {2022},
}
```
