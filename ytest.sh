#!/bin/bash

# 4 cpubomb
./ramsmp-3.5.0-custom/ramsmp -b 1 -p 8 &

# trace cpubomb
./ytracer `pgrep ramsmp`

# 1 lightload with sleep

# 1 lightload with printf
