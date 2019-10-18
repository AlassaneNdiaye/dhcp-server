#!/bin/bash
if [[ $(ps -p 1 -o comm=) != "docker-init" ]]
then
    echo "This container must be started with an init process."
    echo "Please use the --init flag in your run command."
    exit 1
fi
ln -fs /conf/* /etc/dhcp/
exec dhcpd -f
