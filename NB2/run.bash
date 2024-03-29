CUDA_VISIBLE_DEVICES=1 python3 -u main.py \
--dataset=KuaiRand2000 \
--train_dir=ssm2k1 \
--maxlen=2000 \
--dropout_rate=0.2 \
--batch_size=256 \
--lr=0.0002 \
--device=cuda \
--backbone=mamba \
--name=2kssm1 \
--hidden_units=50 > ./results/2kssm1.out
