

 NAS Parallel Benchmarks (NPB3.3-OMP) - SP Benchmark

 No input file inputsp.data. Using compiled defaults
 Size:   12x  12x  12
 Iterations:  100    dt:    0.0150000

 Time step    1
 Time step   20
 Time step   40
 Time step   60
 Time step   80
 Time step  100
 Verification being performed for class S
 accuracy setting for epsilon =  0.1000000000000E-07
 Comparison of RMS-norms of residual
           1 0.2747031545137E-01 0.2747031545134E-01 0.1208798524209E-11
           2 0.1036074670528E-01 0.1036074670529E-01 0.6703988617218E-12
           3 0.1623574506506E-01 0.1623574506510E-01 0.1959981960528E-11
           4 0.1584055722445E-01 0.1584055722446E-01 0.9045651430397E-13
           5 0.3484904060936E-01 0.3484904060936E-01 0.2011040396063E-13
 Comparison of RMS-norms of solution error
           1 0.2728925855741E-04 0.2728925855738E-04 0.1030993433436E-11
           2 0.1036444664083E-04 0.1036444664084E-04 0.3386678184624E-12
           3 0.1615479828713E-04 0.1615479828717E-04 0.2372455917807E-11
           4 0.1575070499448E-04 0.1575070499448E-04 0.2495274260192E-13
           5 0.3417766618340E-04 0.3417766618339E-04 0.1641641126842E-12
 Verification Successful


 SP Benchmark Completed.
 Class           =                        S
 Size            =             12x  12x  12
 Iterations      =                      100
 Time in seconds =                     1.50
 Total threads   =                        1
 Avail threads   =                        1
 Mop/s total     =                    64.48
 Mop/s/thread    =                    64.48
 Operation type  =           floating point
 Verification    =               SUCCESSFUL
 Version         =                    3.3.1
 Compile date    =              27 Jun 2017

 Compile options:
    F77          = gfortran
    FLINK        = $(F77)
    F_LIB        = (none)
    F_INC        = (none)
    FFLAGS       = -O -ff2c
    FLINKFLAGS   = -fopenmp -O -ff2c
    RAND         = (none)


 Please send all errors/feedbacks to:

 NPB Development Team
 npb@nas.nasa.gov


