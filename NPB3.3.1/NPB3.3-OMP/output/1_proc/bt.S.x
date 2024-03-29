

 NAS Parallel Benchmarks (NPB3.3-OMP) - BT Benchmark

 No input file inputbt.data. Using compiled defaults
 Size:   12x  12x  12
 Iterations:   60       dt:   0.0100000

 Time step    1
 Time step   20
 Time step   40
 Time step   60
 Verification being performed for class S
 accuracy setting for epsilon =  0.1000000000000E-07
 Comparison of RMS-norms of residual
           1 0.1703428370954E+00 0.1703428370954E+00 0.7201925617357E-13
           2 0.1297525207003E-01 0.1297525207003E-01 0.3680617304070E-12
           3 0.3252792698948E-01 0.3252792698949E-01 0.1275660313637E-12
           4 0.2643642127515E-01 0.2643642127517E-01 0.8077661407724E-12
           5 0.1921178413175E+00 0.1921178413174E+00 0.1349364923488E-12
 Comparison of RMS-norms of solution error
           1 0.4997691334580E-03 0.4997691334581E-03 0.1963312458515E-12
           2 0.4519566678297E-04 0.4519566678296E-04 0.2412401204172E-12
           3 0.7397376517297E-04 0.7397376517292E-04 0.6065990734533E-12
           4 0.7382123863238E-04 0.7382123863244E-04 0.8375181727013E-12
           5 0.8926963098749E-03 0.8926963098749E-03 0.3485687350348E-13
 Verification Successful


 BT Benchmark Completed.
 Class           =                        S
 Size            =             12x  12x  12
 Iterations      =                       60
 Time in seconds =                     3.32
 Total threads   =                        1
 Avail threads   =                        1
 Mop/s total     =                    68.68
 Mop/s/thread    =                    68.68
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


