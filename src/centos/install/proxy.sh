#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

# TODO: figure out how to inject ENV into these scripts
# system wide proxies
echo export http_proxy=$HTTP_PROXY >> /etc/environment
echo export https_proxy=$HTTPS_PROXY >> /etc/environment
echo export no_proxy=$NO_PROXY >> /etc/environment
