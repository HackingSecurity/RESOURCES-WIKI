#!/bin/bash

#for host in (seq 2 254); do
#    timeout 1 bash -c "ping -c 1 147.96.4.$host > /dev/null 2>&1" && echo "Host 174.96.4.$1 - ACTIVE "  &
#done; wait


for host in (seq 15 30); do
    timeout 1 bash -c "ping -c 1 147.96.4.$host > /dev/null 2>&1" && echo "Host 174.96.4.$1 - ACTIVE "  &
done; wait