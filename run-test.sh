#!/bin/bash

export LANG=C
echo "PDF_HOME=${PDF_HOME}"
if [ -f ${PDF_HOME}/bin/activate ]; then
    source $PDF_HOME/bin/activate
fi

# make check_serial 2>&1 | tee make_check_serial.log
make check_serial_dev 2>&1 | tee make_check_serial_dev.log
# make check_parallel 2>&1 | tee make_check_parallel.log
