#!/bin/bash
#SBATCH -o %j.out 
#SBATCH -e %j.out 
#SBATCH -J ls_dataprocess # ��ҵ��ָ��Ϊtest
#SBATCH -p si 
#SBATCH --nodes=1             # ����һ���ڵ�
#SBATCH --gres=gpu:1		#�����gpu����
#SBATCH --cpus-per-task=8 # һ��������Ҫ�����CPU������Ϊ5
#SBATCH --time=999:00:00
# ��Ҫִ�е�ָ��
python -u data_process.py
