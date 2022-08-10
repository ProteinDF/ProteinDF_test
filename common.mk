# ProteinDF test Makefile


DB_BASENAME := pdfresults
DB_SUFFIX := h5

DO_TEST   = $(addsuffix .out, $(TEST_ENTRY))
TEST_DB   = $(addsuffix .$(DB_SUFFIX), $(TEST_ENTRY))
TEST_LOG  = $(addsuffix .log, $(TEST_ENTRY))


.PHONY: pdf check clean
test: test.log


pdf.log:
	@echo ">>>> RUN ProteinDF"
	@${PDF_CLEAN}
	@${PDF_SETUP}

	@echo "running ProteinDF"
	@if [ -f ./pre_pdf.sh ]; then \
		./pre_pdf.sh ;\
	fi
	${PDF_CMD} 2>&1 | tee $@ || exit 110


$(DB_BASENAME).$(DB_SUFFIX): pdf.log
	@echo ">>>> MAKE DB"
	$(PDF_ARCHIVE)


test.log: $(DB_BASENAME).$(DB_SUFFIX)
	@echo ">>> CHECK"
	$(PDF_TEST) $< reference.$(DB_SUFFIX) 2>&1 | tee $@ 


clean:
	@${PDF_CLEAN}
	@$(RM) pdf.log $(DB_BASENAME).$(DB_SUFFIX) test.log


