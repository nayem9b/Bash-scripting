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

# read -p "Enter your score: " score

# if [ $score -ge 80 ]; then
#     echo "You got A+"
# elif [[ $score > 69 || $score < 80 ]]; then  #Duita condition && operator use korar karone [[]] dewa lagche
#     echo "You got A"
# else
#     echo "your score is below than A"
# fi

#if file exist
# if [[ -f foo.txt ]]; then
#     echo "File exist"
# else
#     echo "File Does't exist"
# fi


# #if directory exist
# if [[ -d devopss ]]; then
#     echo "Directory exist"
# else
#     echo "Directory Does't exist"
# fi

#if directory and file exist
# if [[ -e devops && -e fool.txt ]]; then  #e means it can be file or directory, anything (explicitly)
#     echo "Directory exist"
# else
#     echo "Directory Does't exist"
# fi

#if file is empty or not
# if [[ -e empty-file && -s empty-file ]]; then # -s diye empty check kore
#     echo "File is not empty"
# else
#     echo "File is empty"
# fi

#if file has read permission
# if [[ -r foo.txt ]]; then # -s diye empty check kore
#     echo "File has read permission"
# else
#     echo "File has no read permission"
# fi

if [[ foo.txt -nt empty-file ]]; then     #ot means older than #nt means newer than
    echo "Foo is older"
else
    echo "Foo is younger"
fi