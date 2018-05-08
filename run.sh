#!/bin/bash

mod_dir="udf_${RESIN_DEVICE_TYPE}_${RESIN_HOST_OS_VERSION}"

insmod $mod_dir/udf.ko
lsmod | grep udf
rmmod udf
echo done!

while true; do
	sleep 60
done
