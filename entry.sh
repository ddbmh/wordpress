#!/bin/bash

mkdir -p /var/log
/entrypoint.sh "$@" &> /var/log/wordpress.log
