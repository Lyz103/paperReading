#!/bin/bash --login
########## SBATCH Lines for Resource Request ##########

#SBATCH -e ./results/ml-1m_int_t5_bs_256_lr_0.0005_st_0_mean_only_item_emb_2024_dr_0.7.err
#SBATCH -o ./results/ml-1m_int_t5_bs_256_lr_0.0005_st_0_mean_only_item_emb_2024_dr_0.7.out
#SBATCH --time=4:00:00             # limit of wall clock time - how long the job will run (same as -t)
#SBATCH --nodes=1                 # number of different nodes - could be an exact number or a range of nodes (same as -N)
#SBATCH -c 1           # number of CPUs (or cores) per task (same as -c
#SBATCH --gres=gpu:v100s:1
#SBATCH --mem=40G            # memory required per allocated CPU (or core) - amount of memory (in bytes)
#SBATCH --job-name Int_ml # you can give your job a name for easier identification (same as -J)

source ~/.bashrc
source ~/anaconda3/bin/activate pytorch

CUDA_VISIBLE_DEVICES=4 python -u main.py \
--dataset=ml-1m \
--train_dir=default \
--maxlen=20 \
--dropout_rate=0.2 \
--device=cuda \
--backbone=mamba \
--hidden_units=50 > ./results/mamba_ml-1m.out