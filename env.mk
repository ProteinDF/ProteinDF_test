# setup
SHELL = /usr/bin/zsh

PDF_SERIAL = ${PDF_HOME}/bin/PDF.x
PDF_PARALLEL = ${MPIEXEC} ${PDF_HOME}/bin/PPDF.x

PDF_CLEAN = pdf-clean.sh all
PDF_SETUP = pdf-setup.sh 
PDF_ARCHIVE = pdf-archive.py ${PDF_ARCHIVE_ARGS}
PDF_TEST = pdf-test.py ${PDF_TEST_ARGS}

