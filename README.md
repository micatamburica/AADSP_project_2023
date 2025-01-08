**REALIZATION OF CHANNEL COMBINING ALGORITHM ON THE CIRRUS LOGIC DSP PLATFORM**

The goal of the project is the realization of channel combining based on the given scheme and teble.
Visual Studio and CLIDE development environments were used for implementation.
C code is used, which is then adapted to the arithmetic of the Crystal DSP processor, and finally the assembler is used.

The solution was realized gradually, through models.< br / >
<ins>Model 0</ins>  Reference C code in arithmetic floating point. Realized in Visual Studio, with x86 compiler, in C/C++ language.<br />
<ins>Model 1</ins>  Step in which the reference C code from Model 0 is functionally optimized.< br / >
<ins>Model 2</ins>  Modifying the algorithm and C code for immovable data types with a comma, therefore, one switches from floating-point to fixed-point arithmetic.< br / >
<ins>Model 3 - C code</ins>  Environment is swiched from the Visual Studio to CLIDE. The code is adapted to the C language from the C++ language.< br / >
<ins>Model 3 - Assembly</ins>  The gainProcessing function is converted from C language to hand-written assembly code of the given platform.< br / >
<ins>Model 3 - Optimization</ins>  The code is further optimized to reduce the number of cycles.< br / >
<ins>Final Model</ins>  Integration into the environment, further optimization and verification, after which testing is carried out.< br / >

![plot](./Documentation/)
