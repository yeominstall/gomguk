#!/bin/bash

pnum=( 1 2 4 8 )

for pn in 1 2 4 8
do

	sleep 5
	echo "ramsmp -b1 -p ${pn}"

	{ time ../odroid-smartpower-linux/smartpower energy/smartresult.txt & } 2> ./energy/time.txt
	./ramsmp-3.5.0-custom/ramsmp -b 1 -p ${pn}

	killall smartpower

	tail -n 1 energy/smartresult.txt >> energy/res.txt
	echo -e "\n\n"

	tail -n 3 energy/time.txt >> energy/res.txt
	echo -e "\n\n"
	echo "ramsmp -b1 -p ${pn} end"
done
