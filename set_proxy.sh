#!/bin/bash

read -s -p "Enter Username: " myid
echo -e ""
read -s -p "Enter Password: " mypass
echo -e ""

export HTTP_PROXY=http://$myid:$mypass@proxy.aholdusa.com:8080
export HTTPS_PROXY=http://$myid:$mypass@proxy.aholdusa.com:8080
export SOCKS_PROXY=http://$myid:$mypass@proxy.aholdusa.com:8080

echo -e "Proxies set!\n"
