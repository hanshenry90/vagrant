#!/bin/bash

# Update Centos
yum update -y --exclude=kernel
# Download nano git nc telnet
yum install -y nano git screen unzip nc telnet nmap

