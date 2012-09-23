#!/bin/bash
#careful
eat()
{
        while read a
        do
                grow_array[$((x++))]=$a
		#echo is just to observe.
                #echo "${grow_array[@]}"
        done < /dev/urandom | tr -dc [:alpha:]
}

read -p "eats ram for testing.  kill with prejudice. go? (Y) " yup
[[ "$yup" = "Y" ]] && eat || exit 0
