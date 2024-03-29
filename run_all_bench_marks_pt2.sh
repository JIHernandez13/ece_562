#/bin/bash

# ./build/ARM/gem5.opt --stats-file=$i.txt --dump-config=$i.ini configs/example/se.py --caches --l1i_size=32kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 --cacheline_size=64 --cpu-clock=1.6GHz --cpu-type=O3_ARM_v7a_3 -n 1 --maxinsts=100000000 --bench "$i"
for i in a2time01 cacheb01 bitmnp01 mcf libquantum; do
	./build/ARM/gem5.opt --stats-file=$i.txt --dump-config=$i.ini configs/example/se.py --caches --l1i_size=32kB --l1i_assoc=4 --l1d_size=32kB --l1d_assoc=4 --cacheline_size=64 --l2cache --l2_size=1MB --l2_assoc=8 --cpu-clock=1.6GHz --cpu-type=O3_ARM_v7a_3 -n 1 --maxinsts=100000000 --bench $i
done;

