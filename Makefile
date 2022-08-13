SHELL = /bin/bash
.SHELLFLAGS = -o pipefail -c


MAKEFILE_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
export PDF_TEST_HOME := $(shell (cd $(MAKEFILE_DIR); pwd))

include env.mk

.EXPORT_ALL_VARIABLES:


.PHONY: test test_serial test_serial_dev test_parallel test_parallel_dev clean 

test: test_serial 


test_serial:
	(cd serial; make test)


test_serial_dev:
	(cd serial_dev; make test)


test_parallel:
	(cd parallel; make test)


test_parallel_dev:
	(cd parallel_dev; make test)


clean: clean_serial clean_serial_dev clean_parallel clean_parallel_dev


clean_serial:
	(cd serial; make clean)

clean_serial_dev:
	(cd serial_dev; make clean)

clean_parallel:
	(cd parallel; make clean)

clean_parallel_dev:
	(cd parallel_dev; make clean)

