#!/bin/bash
#PBS -N Proj3
#PBS -e ./error_log_train.txt
#PBS -o ./output_log_train.txt

cd ~/4901
echo Start of calculation
python main.py -mode train -saved_model models/model.h5 -student_id 12345678 -epochs 1 -batch_size 32 -embedding_dim 100 -hidden_size 500 -drop 0.5
echo End of calculation