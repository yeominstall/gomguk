#!/bin/bash

# 4 cpubomb
./cpubomb/cpubomb 5 &

# trace cpubomb
./ytracer `pgrep cpubomb`

# 1 lightload with sleep

# 1 lightload with printf
