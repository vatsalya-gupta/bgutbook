#!/bin/bash

source_dir="source"
dest_dir="manuscript"
solutions_path="${dest_dir}/part_900_solutions_to_exercises"

source_ext="\.text\.md"
dest_ext=".md"
exercises_ext=".exercises.md"

source_files=$(find ${source_dir} -type f | grep -e "${source_ext}$" | sort)

rm -fR ${dest_dir}
mkdir ${dest_dir}
mkdir -p ${solutions_path}

for source_file in ${source_files}; do
    basename=$(echo ${source_file} | sed -r -e s,"${source_dir}","${dest_dir}", -e s,"${source_ext}$",,)
    dest_file=${basename}${dest_ext}
    exercises_file=$(echo ${source_file} | sed -r -e s,"${source_ext}$","${exercises_ext}",)
    solutions_file=${solutions_path}/$(basename ${basename})${dest_ext}

    mkdir -p $(dirname ${dest_file})

    exercises_chapter=$(cat ${source_file} | grep -Po "(?<=^\{EXERCISES )[0-9]+(?=\}$)")

    if [[ -z  ${exercises_chapter} ]]; then
        echo "${source_file}"
        echo "    --> ${dest_file} (no exercises)"
        cp ${source_file} ${dest_file}
        continue
    fi

    echo "${source_file}" CHAPTER ${exercises_chapter}
    echo "    --> ${dest_file} (with exercises)"
    echo "    --> ${solutions_file} (solutions)"

    head -n1 ${source_file} > ${solutions_file}
    echo >> ${solutions_file}

    exercises=$(cat ${exercises_file} | grep -Po "(?<=\{EXERCISE BEGIN ).*(?=\})" | sed -r s,"^","${exercises_chapter}.",)
    exercises_insertion_line=$(cat ${source_file} | nl -ba -nln -s"|" | grep -E "\{EXERCISES [0-9]+\}$" | cut -d "|" -f 1 | sed -r s," *",,g)

    head -n ${exercises_insertion_line} ${source_file} | head -n-1 > ${dest_file} 

    echo >> ${dest_file}

    echo "## Solutions to exercises" >> ${solutions_file}
    echo >> ${solutions_file}

    for exercise in ${exercises}; do
        exercise_label=$(echo ${exercise} | sed s,"\.","_",g)
        exercise_number=$(echo ${exercise} | sed -r s,"${exercises_chapter}\.",,)
        
        exercise_start_line=$(cat ${exercises_file} | nl -ba -nln -s"|" | grep -E "\{EXERCISE BEGIN ${exercise_number}\}" | cut -d "|" -f 1 | sed -r s," *",,g)
        exercise_end_line=$(cat ${exercises_file} | nl -ba -nln -s"|" | grep -E "\{EXERCISE SOLUTION ${exercise_number}\}" | cut -d "|" -f 1 | sed -r s," *",,g)

        solution_start_line=${exercise_end_line}
        solution_end_line=$(cat ${exercises_file} | nl -ba -nln -s"|" | grep -E "\{EXERCISE END ${exercise_number}\}" | cut -d "|" -f 1 | sed -r s," *",,g)

        echo "{#exercise_${exercise_label}}" >> ${dest_file}
        echo "### Exercise ${exercise}" >> ${dest_file}
        sed -n ${exercise_start_line},${exercise_end_line}p ${exercises_file} | grep -Ev "^\{EXERCISE" >> ${dest_file}
        echo >> ${dest_file}
        echo "[Go to solution](#solution_${exercise_label})" >> ${dest_file}
        echo >> ${dest_file}

        echo "{#solution_${exercise_label}}" >> ${solutions_file}
        echo "### Exercise ${exercise}" >> ${solutions_file}
        sed -n ${exercise_start_line},${exercise_end_line}p ${exercises_file} | grep -Ev "^\{EXERCISE" >> ${solutions_file}
        echo >> ${solutions_file}
        echo "**Solution**" >> ${solutions_file}
        sed -n ${solution_start_line},${solution_end_line}p ${exercises_file} | grep -Ev "^\{EXERCISE" >> ${solutions_file}
        echo >> ${solutions_file}
        echo "[Go back to the exercise](#exercise_${exercise_label})" >> ${solutions_file}
        echo >> ${solutions_file}
    done

    tail -n+${exercises_insertion_line} ${source_file} | tail -n+2 >> ${dest_file}
done

find ${dest_dir} -type f -iname "*.md" -printf "%P\n" | sort > ${dest_dir}/Book.txt
