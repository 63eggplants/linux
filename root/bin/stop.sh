#!/bin/bash

print_try(){
    echo "Try 'stop -h' for more information"
    exit 1
}

print_help(){
    echo "usge: stop { nginx | mysql }"
    exit 1 
}

case $1 in 
    mysql)
        `systemctl stop mysqld`;;
    nginx)
        `systemctl stop nginx`;;
    -h)
        print_help;;
    *)
        print_try;;        
esac



