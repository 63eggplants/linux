#!/bin/bash

print_try(){
    echo "Try 'restart -h' for more information"
    exit 1
}

print_help(){
    echo "usge: restart { nginx | mysql }"
    exit 1
}

case $1 in
    mysql)
        `systemctl restart mysqld`;;
    nginx)
        `systemctl restart nginx`;;
    -h)
        print_help;;
    *)
        print_try;;
esac
