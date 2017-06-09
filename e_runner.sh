#!/bin/bash

for pn in 1
do

	sleep 5
	echo "ramsmp -b1 -p ${pn}"

	{ time ../odroid-smartpower-linux/smartpower energy/smartresult.txt & } 2> ./energy/time.txt

	./yaffin_test -c 5

	killall smartpower

	tail -n 1 energy/smartresult.txt >> energy/res.txt
	echo -e "\n\n"

	tail -n 3 energy/time.txt >> energy/res.txt
	echo -e "\n\n"
	echo "ramsmp -b1 -p ${pn} end"
done
