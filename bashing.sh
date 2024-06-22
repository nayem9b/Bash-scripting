#!/usr/bin/bash
# echo "Hello world"
# name="NayemAlom"

# echo "My name is ${name}"
# echo "My updated userName is ${name/Alom/Rezwan}"
# age=25
# echo "My age is ${age}y"
# location="Khulna"
# echo "My location is ${location:-Dhaka}"

# #substring
# echo "My name is ${name:5:4}"

# #variable expansion
# fileName="error.log"
# echo "File extension is ${fileName: -3}"


# read -p "Enter your name: " name

# read -sp "Enter your password: " password #secret prompt

# name=$1  # positional argument

# echo "my name is ${name}"
# # echo "your password is ${password}"

# age=25

# if[condition]; then
#  echo "hello"
# else
#  echo "Onno"
# fi

# read -p "Enter your age: " age

# if [ $age -gt 22 ]; then
#     echo "age is greater"
# else
#     echo "age is smaller"
# fi

read -p "Enter your score: " score

if [ $score -ge 80 ]; then
    echo "You got A+"
elif [[ $score -ge 70 && $score -le 79 ]]; then  #Duita condition && operator use korar karone [[]] dewa lagche
    echo "You got A"
else
    echo "your score is below than A"
fi