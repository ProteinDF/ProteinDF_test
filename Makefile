
.PHONY: check check_serial check_parallel clean 

check: check_serial check_parallel

check_serial:
	(cd serial; make check)

check_serial_dev:
	(cd serial_dev; make check)

check_parallel:
	(cd parallel; make check)

check_parallel_dev:
	(cd parallel_dev; make check)

clean: 
	(cd serial; make clean)
	(cd serial_dev; make clean)
	(cd parallel; make clean)
	(cd parallel_dev; make clean)

