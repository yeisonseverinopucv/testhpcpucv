#!/bin/bash

#SBATCH -J 001_ejemplo_R
#SBATCH -p CPU
#SBATCH -n 4
#SBATCH -o salida_%j_001_ejemplo_R.out
#SBATCH -e salida_%j_001_ejemplo_R.err
#SBATCH --mail-user=yeison.severino@pucv.cl
#SBATCH --mail-type=ALL

module load R
srun Rscript rnorm1.R
