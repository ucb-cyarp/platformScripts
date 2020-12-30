#!/bin/bash

#First Bring the CPUs up and Down
./offline-online-cpus.sh

#Next, setup the USRP interface.  This will online interrupt handlers for the NIC we want to offload
# ./setupUSRPNetworking.sh

#Next, set the CPU frequencies and scheduling properties
# ./set-freq-3ghz-smtDisabled.sh
./set-freq-3ghz-epyc.sh

#Next, offload interrupts to CPU0 where possible
./setSMPAffinity.sh
