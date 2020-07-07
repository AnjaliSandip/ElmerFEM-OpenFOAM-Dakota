 # copyright (c) 2020 ASandip
 #This program is free software: you can redistribute it and/or 
 # modify it under the terms of the GNU General Public License as 
 # published by the Free Software Foundation, either version 3 of the License, or
 # (at your option) any later version.
 # This program is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 # GNU General Public License for more details.
 
 # You should have received a copy of the GNU General Public License
 # along with this program.  If not, see <https://www.gnu.org/licenses/>.



#!/bin/bash

# $1 and $2 are special variables in bash that contain the 1st and 2nd 
# command line arguments to the script, which are the names of the
# Dakota parameters and results files, respectively.

params=$1
results=$2

############################################################################### 
##
## Pre-processing Phase -- Generate/configure an input file for your simulation 
##  by substiting in parameter values from the Dakota paramters file.
##
###############################################################################

#Transfer new set of values for the chosen input parameters -- melt density,
#surface tension, ac frequency and current density -- from Dakota to Elmer and OpenFoam

dprepro $params sim.template transportProperties 

dprepro --inline "@ @" $params case.template case_d.sif


############################################################################### 
##
## Execution Phase -- Run your simulation
##
###############################################################################

#Execute bash script, test.sh: Invokes EOF library that begins the simulation (Elmer and OpenFoam, run in parallel) 
## and enables communication between Elmer FEM and OpenFOAM during runtime

sudo bash test.sh

############################################################################### 
##
## Post-processing Phase -- Extract (or calculate) quantities of interest
##  from your simulation's output and write them to a properly-formatted
##  Dakota results file.
##
##############################################################################

# Quantity of interest -- lorentz force at the final time step

awk  'NR == 23, NR==984 { print $1, $2, $3 }' processor1/0.49/JxB > lorentz_force.txt
sed 's/[()]//g'  lorentz_force.txt > lf.txt
cp  lf.txt  $results




