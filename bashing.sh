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



# older than newer than
# if [[ foo.txt -nt empty-file ]]; then     #ot means older than #nt means newer than
#     echo "Foo is older"
# else
#     echo "Foo is younger"
# fi

# #conditonal using regex
# read -p "Enter log file: " file
# if [[ $file =~ \.log$ ]]; then
#     echo "valid log file"
# else
#     echo "not valid log file"
# fi

# case $variable in
#     pattern1)
#     #code tobe executed
#     ;;
#     pattern2)
#     #code tobe executed
#     ;;
#     *) #default case like else
#     ;;
# esac


#switch case statement
# echo "1. Show current directory"
# echo "2. Show date"
# echo "Enter other number to exit: "

# read variable

# case $variable in
#     1)
#     ls
#     ;;
#     2)
#     date
#     ;;
#     *)
#     echo "Invalid choice"
#     exit
#     ;;
# esac


# subshell

# curr_work_dir=$(ls)
# echo "$curr_work_dir"
# parent_pid=$$

# (
#     sub_pid=$BASHPID
#     echo "$sub_pid"
#     cd devops
#     pwd
#     ls -l
# )
# echo "================"
# echo "$parent_pid"
# pwd

age=25

(
    age=$((age+3))
    echo $age > age.txt
)

age=$(cat age.txt)
echo $age