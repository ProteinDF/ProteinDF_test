TARGETS := \
  GLY.mpi.array \
  GLY.mpi.array_mmap \
  GLY.mpi.mmap 


.PHONY: test clean

test:
	@for TARGET in $(TARGETS); do \
	( \
		echo ">>>> $${TARGET}"; \
		cd $${TARGET}; \
		PDF_CMD="$${PDF_PARALLEL}" make -f "$${PDF_TEST_HOME}/common.mk" test || exit 50; \
	) || exit 70; \
	done


clean:
	@for TARGET in $(TARGETS); do \
	( \
		cd $${TARGET}; \
		make -f "$${PDF_TEST_HOME}/common.mk" clean; \
	) \
	done

