# ProteinDF test Makefile
include ../env.mk

TEST_RESULT = $(addsuffix .pdf, $(TEST_ENTRY))
TEST_DB     = $(addsuffix .db,  $(TEST_ENTRY))
TEST_LOG    = $(addsuffix .log, $(TEST_ENTRY))

.PHONY: pdf check clean
check: $(TEST_LOG)

$(TEST_RESULT):
	@echo ">>>> RUN ProteinDF: $(basename $@)"
	@(cd $(basename $@); $(PDF_CLEAN); $(PDF_SETUP))
	@echo "running ProteinDF"
	@(cd $(basename $@); \
		if [ -f ./pre_pdf.sh ]; then \
			./pre_pdf.sh ;\
		fi; \
		$(PDF_CMD); \
	)
	@touch $@

%.db: %.pdf
	@echo ">>>> MAKE DB: $(basename $@)"
	@(cd $(basename $@); \
		$(PDF_ARCHIVE) \
	)
	@mv $(basename $@)/pdfresults.db $@

%.log: %.db
	@echo "check results ..."
	@$(PDF_TEST) $< $(basename $@)/pdfresults_std.db 2>&1 > $@
	@echo

clean:
	@for i in $(TEST_ENTRY); do  \
		(cd $$i; $(PDF_CLEAN)); \
	done
	@$(RM) $(TEST_RESULT)
	@$(RM) $(TEST_LOG)

