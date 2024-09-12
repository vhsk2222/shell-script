#!/bin/bash

ID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
then echo "ERROR: $2 FAILED"
exit 1
else echo "$2 .... SUCCESS"
fi
}

yum install mysql -y
VALIDATE $? "Installed MYSQL"

yum install git -y
VALIDATE $? "Installed GIT"

 