TARGETS :=  \
  Ne_HF \
  Ne_SVWN5 \
  Ne_BLYP \
  Ne_B3LYP \
  N2_RHF \
  N2_RHF.CDK \
  N2_UHF \
  N2_RSVWN5 \
  N2_USVWN5 \
  N2_RBLYP \
  N2_UBLYP \
  N2_RB3LYP \
  N2_UB3LYP \
  H2O_HF \
  H2O_SVWN5 \
  H2O_BLYP \
  H2O_B3LYP \
  CH3COOX_HF.array \
  CH3COOX_HF.mmap \
  CH3COOX_HF.array_mmap \
  CH3CHO_SVWN_GF 

# O2_UHF \
# O2_USVWN5 \
# O2_UBLYP \
# O2_UB3LYP \

# GLY_HF01     \
# GLY_HF02     \
# GLY_HF03     \
# GLY_SVWN01   \
# GLY_SVWN02   \
# GLY_SVWN03   \
# GLY_BLYP01   \
# GLY_BLYP02   \
# GLY_BLYP03   \
# GLY_B3LYP01  \
# GLY_B3LYP02  \
# GLY_B3LYP03  \
# ASPx_HF01	  \
# ASPx_HF02	  \
# ASPx_HF03	  \
# ASPx_SVWN01  \
# ASPx_SVWN02  \
# ASPx_SVWN03  \
# ASPx_BLYP01  \
# ASPx_BLYP02  \
# ASPx_BLYP03  \
# ASPx_B3LYP01 \
# ASPx_B3LYP02 \
# ASPx_B3LYP03 


# include $(PDF_TEST_HOME)/env.mk
# export PDF_CMD := $(PDF_SERIAL)


.PHONY: test clean

test:
	@for TARGET in $(TARGETS); do \
	( \
		echo "TARGET=$${TARGET}"; \
		cd $${TARGET}; \
		PDF_CMD=$(PDF_SERIAL) make -f $${PDF_TEST_HOME}/common.mk test || exit 50; \
	) || exit 70; \
	done


clean:
	@for TARGET in $(TARGETS); do \
	( \
		cd $${TARGET}; \
		make -f ${PDF_TEST_HOME}/common.mk clean; \
	) \
	done


