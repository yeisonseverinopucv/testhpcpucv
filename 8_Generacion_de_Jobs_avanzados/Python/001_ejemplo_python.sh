#!/bin/bash

#SBATCH -J 001_ejemplo_python
#SBATCH -p CPU
#SBATCH -n 4
#SBATCH -o salida_%j_001_ejemplo_python.out
#SBATCH -e salida_%j_001_ejemplo_python.err
#SBATCH --mail-user=yeison.severino@pucv.cl
#SBATCH --mail-type=ALL

srun python n_queens_problem_v3_board_4.py
