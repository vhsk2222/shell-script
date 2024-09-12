#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then echo "ERROR: A ROOT USER"
else echo "You are ROOT"
fi

yum install mysql -y
