#!/bin/bash

python -m train_model --save_path "output/model-new-v1-0" --log-interval 20 --seed 5104 --clip 5.0 --epochs 1100 --batch_size 256 --lr 1e-4 --seq_len 40 --rnn_nhid 512 --tf_nhid 1024 --tf_in_dim 256 --n_heads 16 --tf_layers 4 --in_dropout 0.0 --past_dropout 0.8 --weight_decay 1e-4 --cuda --cosine_lr --n_sbps 5 --with_acc_sum --data_version_tag "v1" --noise_input_hist 0.15 > "output/model-new-v1-0-out.txt" 

