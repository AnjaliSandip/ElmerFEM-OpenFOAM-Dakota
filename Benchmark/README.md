


Free surface dynamics of melt in an alternated electromagnetic field (2D, Transient)

The numerical predictions were compared against experimental data [1].

   - Data analysis: Listed parameter study Combinations of values for input parameters used in the experimental study were chosen. https://dakota.sandia.gov/sites/default/files/docs/6.10/html-ref/method-list_parameter_study.html
   - Input parameter/s: melt density (kg/m3), surface tension (N/m), ac frequency (Hz), current density (A/m2)
   - Output parameter/s: Melt shape (Lorentz force and flow velocity) at the final timestep
   - The turbulence model chosen for this study was k − ω SST.
   - Elmer and OpenFoam files courtesy https://github.com/jvencels/EOF-Library
   - EOF Library [2] was employed to invoke communication between Elmer and OpenFoam during run time
   - More details on the test case (boundary conditions, etc.), can be found here [3]
   - The melt shapes obtained for the combinations of input parameter values were in good agreement with experimental data [1].

References: 
[1]. Spitans, Sergejs, Egbert Baake, Bernard Nacke, and Andris Jakovics. "Numerical modeling of free surface dynamics of melt in an alternate electromagnetic field. Part II: Conventional electromagnetic levitation." Metallurgical and Materials Transactions B 47, no. 1 (2016): 522-536. 
[2]. Vencels, Juris, Andris Jakovics, Vadims Geza, and Mihails Scepanskis. "EOF Library: Open-Source Elmer and OpenFOAM Coupler for simulation of MHD with free surface." arXiv preprint arXiv:1707.04080 (2017). 
[3]. Vencels, J., A. Jakovics, and V. Geza. "Simulation of 3D MHD with free surface using open-source EOF-Library: levitating liquid metal in an alternating electromagnetic field." Magnetohydrodynamics 53, no. 4 (2017): 643-652.
