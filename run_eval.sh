#!/bin/bash

# mkdir results

# MODEL_NAME="model-new-v1-0"
# MODEL_NAME="model-with-dip9and10"
MODEL_NAME="model-without-dip9and10"
MODEL_NAME_WGT="output/"$MODEL_NAME".pt"

python offline_testing_simple.py --name_contains "dipimu_s_09 dipimu_s_10" --ours_path_name_kin $MODEL_NAME_WGT --with_acc_sum  --test_len 30000 --compare_gt --seed 42 --five_sbp --data_version_tag "v1" > "results/"$MODEL_NAME"__eval-dipimu_s_09 dipimu_s_10.txt"

python offline_testing_simple.py --name_contains "tcimu" --ours_path_name_kin $MODEL_NAME_WGT --with_acc_sum  --test_len 30000 --compare_gt --seed 42 --five_sbp --data_version_tag "v1" > "results/"$MODEL_NAME"__eval-tcimu.txt"

python offline_testing_simple.py --name_contains "DanceDB" --ours_path_name_kin $MODEL_NAME_WGT --with_acc_sum  --test_len 30000 --compare_gt --seed 42 --five_sbp --data_version_tag "v1" > "results/"$MODEL_NAME"__eval-DanceDB.txt"

