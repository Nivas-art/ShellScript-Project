#!bin/bash

USERID=$(id -u)


if [ $USERID -ne 0 ]
then 
    echo "your not a root user"
exit 1
else
    echo "your in root user"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2.....FAILURE"
        exit 1
    elase
        echo "$2.....SUCCES"
    fi
}

dnf install mysql -y 
VALIDATE $? "installing of mysql"

dnf install git -y
VALIDATE $? "installing of git"