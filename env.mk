# setup
PDF_SERIAL = ${PDF_HOME}/bin/PDF.x

PDF_PARALLEL = ${MPIEXEC} ${PDF_HOME}/bin/PPDF.x
#PDF_PARALLEL = ${MPIEXEC} -bootstrap rsh -machinefile ${MACHINEFILE} ${PDF_HOME}/bin/PPDF.x
#PDF_PARALLEL = ${HOME}/local/intel/bin/mpiexec -mca plm_rsh_agent rsh -mca orte_rsh_agent rsh -machinefile ${MACHINEFILE} ${PDF_HOME}/bin/PPDF.x
#PDF_PARALLEL = ${HOME}/local/intel/bin/mpiexec -machinefile ${MACHINEFILE} ${PDF_HOME}/bin/PPDF.x

PDF_CLEAN = ${PDF_HOME}/bin/pdf-clean.sh all
PDF_SETUP = ${PDF_HOME}/bin/pdf-setup.sh 
PDF_ARCHIVE = ${PDF_HOME}/bin/pdf-archive.py ${PDF_ARCHIVE_ARGS}
PDF_TEST = ${PDF_HOME}/bin/pdf-test.py ${PDF_TEST_ARGS}

