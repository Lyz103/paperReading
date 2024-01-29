#!/bin/bash
#SBATCH -o %j.out 
#SBATCH -e %j.out 
#SBATCH -J ls_dataprocess # 作业名指定为test
#SBATCH -p si 
#SBATCH --nodes=1             # 申请一个节点
#SBATCH --gres=gpu:1		#分配的gpu数量
#SBATCH --cpus-per-task=8 # 一个任务需要分配的CPU核心数为5
#SBATCH --time=999:00:00
# 需要执行的指令
python -u data_process.py
