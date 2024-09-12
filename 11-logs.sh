#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "Script Name: $0"
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
if [ $1 -ne 0 ]
then echo -e "ERROR: $2 $R FAILED $N"
exit 1
else echo -e "$2 .... $G SUCCESS $N"
fi
}

if [ $ID -ne 0 ]
then echo -e "$R ERROR: NOT A ROOT USER $N"
exit 1 #You can give other than zero, that will stop the programm if the pervious commans is a failure
else echo "You are ROOT"
fi 

yum install mysql -y &>> $LOG_FILE
VALIDATE $? "Installed MYSQL"

yum install git -y &>> $LOG_FILE
VALIDATE $? "Installed GIT"

 