#!/bin/bash

export LANG=C
echo "PDF_HOME=${PDF_HOME}"
if [ -f ${PDF_HOME}/bin/activate ]; then
    source $PDF_HOME/bin/activate
fi

export OMP_NUM_THREADS=4
make test_serial 2>&1 | tee make_test_serial.log
make test_serial_dev 2>&1 | tee make_test_serial_dev.log

export OMP_NUM_THREADS=2
export MPIEXEC="mpiexec -n 4"
make test_parallel 2>&1 | tee make_test_parallel.log
make test_parallel_dev 2>&1 | tee make_test_parallel_dev.log

