##!/bin/bash

rm -f *_ts_* *.pvd *~ \#*
rm -rf ./_out
mkdir _out
#OMP_NUM_THREADS=16 OGS_ASM_THREADS=16 ~/build-mg/bin/ogs -o _out FST_EPKd_FM1.prj > _out/out.txt
mpiexec -n 8 ~/build/release-petsc/bin/ogs FST_EPKd_FM1.prj -o _out
