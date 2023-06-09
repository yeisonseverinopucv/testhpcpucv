#!/bin/bash

#SBATCH -J 002_ejemplo_R
#SBATCH -p CPU
#SBATCH -n 1
#SBATCH -o salida_%j_002_ejemplo_R.out
#SBATCH -e salida_%j_002_ejemplo_R.err
#SBATCH --mail-user=yeison.severino@pucv.cl
#SBATCH --mail-type=ALL

module load R
srun Rscript ejemplo002.R
