#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then echo "ERROR: not root access"
else echo "You are ROOT"
fi