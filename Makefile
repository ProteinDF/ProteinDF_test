
.PHONY: check check_serial check_parallel clean clean_serial clean_serial_dev clean_parallel clean_parallel_dev

check: check_serial check_parallel

check_serial:
	(cd serial; make check)

check_serial_dev:
	(cd serial_dev; make check)

check_parallel:
	(cd parallel; make check)

check_parallel_dev:
	(cd parallel_dev; make check)

clean: clean_serial clean_serial_dev clean_parallel clean_parallel_dev

clean_serial:
	(cd serial; make clean)

clean_serial_dev:
	(cd serial_dev; make clean)

clean_parallel:
	(cd parallel; make clean)

clean_parallel_dev:
	(cd parallel_dev; make clean)

