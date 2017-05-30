#!/bin/bash

pnum=( 8 )

for pn in ${pnum}; do

	sleep 5
	echo "cpubomb thread ${pn}"

	{ time ../odroid-smartpower-linux/smartpower energy/smartresult.txt & } 2> ./energy/time.txt
	./cpubomb/runn/cpubomb ${pn}

	killall smartpower

	tail -n 1 ./energy/smartresult.txt >> energy/res.txt
	echo -e "\n\n"

	tail -n 3 energy/time.txt >> energy/res.txt
	echo -e "\n\n"
	echo "cpubomb thread ${pn} end"
done
