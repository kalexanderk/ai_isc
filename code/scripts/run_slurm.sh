#!/bin/bash
#SBATCH --partition=gpu
#SBATCH -N 1
#SBATCH --gres=gpu:2
#SBATCH --time=600
#SBATCH --mem=128G

module load python/3.6.3/CUDA-9.0
module load cuda/9.0
module load cudnn/7.2.1/cuda-9.0


srun bash run_deeplab_lite_test_npz.sh

