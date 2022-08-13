PDF_SERIAL := ${PDF_HOME}/bin/PDF.x
PDF_PARALLEL := ${MPIEXEC} ${PDF_HOME}/bin/PPDF.x

PDF_CLEAN := pdf-clean.sh all
PDF_SETUP := pdf-setup.sh 
PDF_ARCHIVE := pdf-archive-h5.py ${PDF_ARCHIVE_ARGS}
PDF_TEST := pdf-test-h5.py -v ${PDF_TEST_ARGS}

