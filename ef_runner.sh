#!/bin/bash

sleep 5
echo "start"

{ time ../odroid-smartpower-linux/smartpower energy/smartresult.txt & } 2> ./energy/time.txt

./yaffin_test -c $1

killall smartpower

tail -n 1 energy/smartresult.txt >> energy/res.txt
echo -e "\n\n"

tail -n 3 energy/time.txt >> energy/res.txt
echo -e "\n\n"
echo "end"
