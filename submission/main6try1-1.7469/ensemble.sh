#!/bin/bash
#PBS -N Main6try1
#PBS -e ./error_log_ensemble.txt
#PBS -o ./output_log_ensemble.txt

cd ~/4901
echo Start of calculation
python main6.py -mode ensemble -input data/valid.csv -saved_model1 models/model05.h5 -saved_model2 models/model06.h5 -saved_model3 models/model04.h5 -saved_model4 models/model03.h5 -vote1 0.25 -vote2 0.25 -vote3 0.25 -vote4 0.25 -student_id 601 -score
echo End of calculation