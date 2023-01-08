#!/bin/bash

/usr/bin/docker rmi -f $(/usr/bin/docker images --filter "dangling=true" -q --no-trunc) 2> /dev/null
/usr/bin/sudo rm -rf /home/shamizi/data
