#!/bin/bash

print_try(){
    echo "Try 'start -h' for more information"
    exit 1
}

print_help(){
    echo "usge: start <nginx> or <mysql>"
    exit 1 
}

case $1 in 
    mysql)
        `systemctl start mysqld`;;
    nginx)
        `systemctl start nginx`;;
    -h)
        print_help;;
    *)
        print_try;;        
esac



