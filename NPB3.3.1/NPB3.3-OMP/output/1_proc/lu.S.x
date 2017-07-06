

 NAS Parallel Benchmarks (NPB3.3-OMP) - LU Benchmark

 Size:   12x  12x  12
 Iterations:                     50

 Time step    1
 Time step   20
 Time step   40
 Time step   50

 Verification being performed for class S
 Accuracy setting for epsilon =  0.1000000000000E-07
 Comparison of RMS-norms of residual
           1   0.1619634321098E-01 0.1619634321098E-01 0.8804102745159E-13
           2   0.2197674516482E-02 0.2197674516482E-02 0.1288605775465E-12
           3   0.1517992765339E-02 0.1517992765340E-02 0.3002640089730E-12
           4   0.1502958443601E-02 0.1502958443599E-02 0.1237597256955E-11
           5   0.3426407315590E-01 0.3426407315590E-01 0.1377083171983E-13
 Comparison of RMS-norms of solution error
           1   0.6422331995796E-03 0.6422331995796E-03 0.8930446909631E-13
           2   0.8414434204735E-04 0.8414434204735E-04 0.3784976867350E-13
           3   0.5858826961650E-04 0.5858826961649E-04 0.3230357253651E-12
           4   0.5847422259515E-04 0.5847422259516E-04 0.2087082164142E-12
           5   0.1310334791411E-02 0.1310334791411E-02 0.5510642406875E-13
 Comparison of surface integral
               0.7841892886594E+01 0.7841892886594E+01 0.1132607181129E-15
 Verification Successful


 LU Benchmark Completed.
 Class           =                        S
 Size            =             12x  12x  12
 Iterations      =                       50
 Time in seconds =                     1.33
 Total threads   =                        1
 Avail threads   =                        1
 Mop/s total     =                    77.16
 Mop/s/thread    =                    77.16
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


