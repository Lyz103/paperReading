CUDA_VISIBLE_DEVICES=0 python3 -u main.py \
--dataset=KuaiRand5000 \
--train_dir=5k+1ksasm2 \
--maxlen=5000 \
--dropout_rate=0.2 \
--batch_size=512 \
--lr=0.0004 \
--device=cuda \
--backbone=sasm \
--name=5k+1ksasm2 \
--saslen=1000 \
--hidden_units=50 > ./results/5k+1ksasm2.out