
The benchmark case [1] was extended to a UQ study.

- Problem objective: Determine the effect of melt density, surface tension, ac frequency and current density on the melt shape
- Data analysis: Uncertainty quantification
  Latin hypercube sampling study was performed, with a sample size of 100.  
  The input parameters were distributed normally.  
  Asynchronous local parallelism was implemented, 4 evaluations performed concurrently
- Input parameter/s: melt density (2500 +/- 2000 kg/m3), surface tension (5.1 +/- 4.9 N/m), ac frequency (21250 +/- 18750 Hz), current density (5e7 +/- 3e7 A/m2)
- Output parameter/s: melt shape (Lorentz force and flow velocity) at the final timestep
- The turbulence model chosen for this study was k − ω SST.
- More details on the test case (boundary conditions, etc.), can be found here [2]

References: 
[1]. Spitans, Sergejs, Egbert Baake, Bernard Nacke, and Andris Jakovics. "Numerical modeling of free surface dynamics of melt in an alternate electromagnetic field. Part II: Conventional electromagnetic levitation." Metallurgical and Materials Transactions B 47, no. 1 (2016): 522-536. 
[2]. Vencels, J., A. Jakovics, and V. Geza. "Simulation of 3D MHD with free surface using open-source EOF-Library: levitating liquid metal in an alternating electromagnetic field." Magnetohydrodynamics 53, no. 4 (2017): 643-652.







