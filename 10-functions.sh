#!/bin/bash

ID=$(id -u)

VALIDATE(){
if [ $ID -ne 0 ]
then echo "ERROR: A ROOT USER"
exit 1
else echo "You are ROOT"
fi
}
 