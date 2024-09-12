#!/bin/bash

ID=$(id -u)
echo "Script Nmae: $0"
#LOG_FILE=/tmp/

VALIDATE(){
if [ $1 -ne 0 ]
then echo "ERROR: $2 FAILED"
exit 1
else echo "$2 .... SUCCESS"
fi
}

if [ $ID -ne 0 ]
then echo "ERROR: NOT A ROOT USER"
exit 1 #You can give other than zero, that will stop the programm if the pervious commans is a failure
else echo "You are ROOT"
fi 

yum install mysql -y
VALIDATE $? "Installed MYSQL"

yum install git -y
VALIDATE $? "Installed GIT"

 