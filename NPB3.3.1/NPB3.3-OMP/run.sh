#!/bin/bash
# NCSA Abe

#PBS -l walltime=6:00:00,nodes=1:ppn=8
#PBS -V

GOM_PATH=/home/odroid/gomguk

cd $GOM_PATH/NPB3.3.1/NPB3.3-OMP
pwd

echo "Class S:"
cnt=2

while [ $cnt -ge 1 ] ; do
	echo "$cnt processors"
	export OMP_NUM_THREADS=$cnt
	mkdir -p output/${cnt}_proc
	./bin/bt.S.x > output/${cnt}_proc/bt.S.x
	./bin/cg.S.x > output/${cnt}_proc/cg.S.x
	./bin/ep.S.x > output/${cnt}_proc/ep.S.x
	./bin/ft.S.x > output/${cnt}_proc/ft.S.x
	./bin/is.S.x > output/${cnt}_proc/is.S.x
	./bin/lu.S.x > output/${cnt}_proc/lu.S.x
	./bin/mg.S.x > output/${cnt}_proc/mg.S.x
	./bin/sp.S.x > output/${cnt}_proc/sp.S.x
	./bin/ua.S.x > output/${cnt}_proc/ua.S.x
	cnt=$[ $cnt - 1]
done
