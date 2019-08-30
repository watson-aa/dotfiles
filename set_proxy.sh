#!/bin/bash

read -s -p "Enter Username: " myid
echo -e ""
read -s -p "Enter Password: " mypass
echo -e ""

mypass=${mypass//@/%40}
mypass=${mypass//:/%3A}
mypass=${mypass//!/%21}
mypass=${mypass//#/%23}
mypass=${mypass//$/%24}

export {http,https,socks,ftp,all}_proxy=http://$myid:$mypass@proxy.aholdusa.com:8080

echo -e "Proxies set!\n"
