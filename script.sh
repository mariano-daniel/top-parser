#! /bin/bash


string=$(ps aux -c | head -n 2 | awk '{print $2,$3,$11}') #I just found out this can be fixed only with awk, To do: Get rid of head, awk can limit the lines with NR

cpu_val=$(ps aux -c | awk 'NR==2 {print int($3)}') #Get the CPU with this string and save it to a var.


#If loop to check if last 3 cpu readings is over 50%

counter=0
while [[ $counter -eq 0 ]]
do
        if [[ $cpu_val -le 60 ]]
        then
        cpu_val=$(ps aux -c | awk 'NR==2 {print int($3)}') #Get the CPU with this string and save it to a var.
        echo $cpu_val
        
        else
        echo "conchas!"

fi
done
