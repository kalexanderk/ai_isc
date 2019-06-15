#!/bin/bash
#SBATCH --partition=gpu
#SBATCH -N 2
#SBATCH --gres=gpu:2
#SBATCH --time=5

srun nvidia-smi

