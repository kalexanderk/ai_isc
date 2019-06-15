#!/bin/bash

#SBATCH --partition=gpu
#SBATCH -N 1
#SBATCH --gres=gpu:2
#SBATCH --time=600
#SBATCH --mem=128G

module load python/3.6.3/CUDA-9.0
module load cuda/9.0
module load cudnn/7.2.1/cuda-9.0

source activate hvd_tf_env

#some parameters
#downsampled test data with the downsampling_rate same as for inference
datapath=/gpfs/hpchome/kurylenk/ai_isc/data/segm_h5_v3_new_split/test
maskpath=/gpfs/hpchome/kurylenk/ai_isc/code/scripts/run_dir_deeplab_base_test_npz/output_test
outpath=${maskpath}/images

#do the plotting
python3 plot_masks.py --datapath=${datapath} --maskpath=${maskpath} --outpath=${outpath}
