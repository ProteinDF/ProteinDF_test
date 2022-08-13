TARGETS := \
  CH3CHO_B3LYP \
  CH3COOX_HF 

# ASPx_HF


.PHONY: test clean

test:
	@for TARGET in $(TARGETS); do \
	( \
		echo ">>>> $${TARGET}"; \
		cd $${TARGET}; \
		PDF_CMD="$${PDF_SERIAL}" make -f "$${PDF_TEST_HOME}/common.mk" test || exit 50; \
	) || exit 70; \
	done


clean:
	@for TARGET in $(TARGETS); do \
	( \
		cd $${TARGET}; \
		make -f ${PDF_TEST_HOME}/common.mk clean; \
	) \
	done	

