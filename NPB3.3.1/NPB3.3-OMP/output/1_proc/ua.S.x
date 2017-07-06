

 NAS Parallel Benchmarks (NPB3.3-OMP) - UA Benchmark

 No input file inputua.data. Using compiled defaults
 Levels of refinement:               4
 Adaptation frequency:               5
 Time steps:                        50    dt:    0.250000E-02
 CG iterations:                     10
 Heat source radius:            0.0400

Step    0: elements refined, merged, total:    20      0    141
Step    5: elements refined, merged, total:     1     16    134
Step   10: elements refined, merged, total:    16      0    246
Step   15: elements refined, merged, total:     0     64    190
Step   20: elements refined, merged, total:     0     80    120
Step   25: elements refined, merged, total:    12      0    204
Step   30: elements refined, merged, total:     0      0    204
Step   35: elements refined, merged, total:     0     96    120
Step   40: elements refined, merged, total:    10      0    190
Step   45: elements refined, merged, total:     8      0    246

 Verification being performed for class S
 accuracy setting for epsilon =  0.1000000000000E-07
 Comparison of temperature integrals
           0.1890013110963E-02 0.1890013110962E-02 0.5887922699503E-12
 Verification Successful


 UA Benchmark Completed.
 Class           =                        S
 Size            =                        4
 Iterations      =                       50
 Time in seconds =                    25.31
 Total threads   =                        1
 Avail threads   =                        1
 Mop/s total     =                     0.49
 Mop/s/thread    =                     0.49
 Operation type  =     coll. point advanced
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


