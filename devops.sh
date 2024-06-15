#! /bin/bash

#shebang

# echo $?  to print exit code

# read -p "Enter your address:" address
# echo "${address/dhaka/khulna}" #parameter expansion
# echo "${#address}" #string er length
# echo "${address: -8:2}"

# age=25
# average_lifespan=60
# remaining_years=$((average_lifespan-age))
# echo $remaining_years

# work_dir_files=$(ls) #current directory er file kotogulo

# echo $work_dir_files

# name=nayem
# another_name=name
# echo ${!another_name}
# echo $name
# echo "${name}-30-2024"
# echo $? #exit code command

# echo ${age:-25} #set as a default age
# echo "this is bash scripting"

#Conditions
# name="Tusha"
# if [[ $name == "Tushar" ]]; then
#     echo "Hello $name vai"
# elif [[ $name != "Tushar" ]] then
#     echo "Tushar vai koi"
# else
#     echo "vai apni ke?"
# fi

# read -p "Enter your name:" name
# if [[ -n $name ]] then      #z checks for if its empty, n checks for if its not empty
#     echo "Hello"
# fi

# read -p "Enter your age:" age
# if [[ $age -eq 20 ]] then      #z checks for if its empty, n checks for if its not empty
#     echo "Hello"
# fi

# if [[ -e "devops.sh" ]] then
#     echo "File Found"
# fi

# dir_name=$1

# if [[ -d $dir_name ]] then
#     echo "directory Found"
# else
#     echo "Error"
# fi

#Array

# students=(Aryan Faisal iPhone)
# echo ${#students[@]:0:2} #0th theke shuru 2 ta nibe

# declare -A new_students

# new_students[0]="Rezwan"
# new_students[1]="Nayem"

# echo ${new_students[@]}

file_names=$(ls)
# echo $file_names

# for file_name in $file_names; do
#     if [[ -f $file_name ]]; then
#         echo "${file_name} is a file"
#     elif [[ -d $file_name ]]; then
#         echo "${file_name} is a directory"
#     fi
# done


# for (( a=0; a<=5; a++ )); do
#     echo $a
# done

# set -u #undefined variable thakle error dibe
# set +u #purber moto kaaj korbe

# set -e #error paile exit korio, porer step e jawar dorkar nei
# set -ue # eksathe duita
# set +x # execute howar age print kroe dekhabe

# echo "hello world"

# if [[ $? -eq 0 ]] ; then
#     echo "Command executed properly"
# fi

#subshell

# (
#     cd class-1
#     touch intro.txt
#     pwd
#     echo $$ #process id
# )

# pwd

build_docker_image()
{
    
}