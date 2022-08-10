TARGETS := \
  GLY_repl \
  GLY_lcao_repl \
  GLY_dist \
  GLY_lcao_dist


.PHONY: test clean

test:
	@for TARGET in $(TARGETS); do \
	( \
		cd $${TARGET}; \
		PDF_CMD=${PDF_PARALLEL} make -f ${PDF_TEST_HOME}/common.mk test || exit 50; \
	) || exit 70; \
	done


clean:
	@echo "PDF_CLEAN=$(PDF_CLEAN)"
	@for TARGET in $(TARGETS); do \
	( \
		cd $${TARGET}; \
		make -f ${PDF_TEST_HOME}/common.mk clean; \
	) \
	done



