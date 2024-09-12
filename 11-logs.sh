#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
echo "Script Name: $0"
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

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

yum install mysql -y &>> $LOG_FILE
VALIDATE $? "Installed MYSQL"

yum install git -y &>> $LOG_FILE
VALIDATE $? "Installed GIT"

 