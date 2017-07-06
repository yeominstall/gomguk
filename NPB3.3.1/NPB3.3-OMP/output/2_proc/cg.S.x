

 NAS Parallel Benchmarks (NPB3.3-OMP) - CG Benchmark

 Size:        1400
 Iterations:                     15

 Initialization time =           0.304 seconds

   iteration           ||r||                 zeta
        1       0.13559314291612E-12     9.9986441579140
        2       0.20968022875811E-14     8.5733279203222
        3       0.21220139530704E-14     8.5954510374058
        4       0.19264995437250E-14     8.5969972340737
        5       0.19149867265115E-14     8.5971549151767
        6       0.20265347150196E-14     8.5971744311608
        7       0.18896504735573E-14     8.5971770704913
        8       0.19757833551762E-14     8.5971774440630
        9       0.20444345740590E-14     8.5971774983942
       10       0.18659924049472E-14     8.5971775064409
       11       0.18246767922945E-14     8.5971775076486
       12       0.19752103401870E-14     8.5971775078318
       13       0.19111824653436E-14     8.5971775078598
       14       0.18421661947701E-14     8.5971775078641
       15       0.18145999088074E-14     8.5971775078648
 Benchmark completed 
 VERIFICATION SUCCESSFUL 
 Zeta is     0.8597177507865E+01
 Error is    0.1033104665906E-14


 CG Benchmark Completed.
 Class           =                        S
 Size            =                     1400
 Iterations      =                       15
 Time in seconds =                     1.86
 Total threads   =                        1
 Avail threads   =                        1
 Mop/s total     =                    35.86
 Mop/s/thread    =                    35.86
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
    RAND         = randi8


 Please send all errors/feedbacks to:

 NPB Development Team
 npb@nas.nasa.gov


