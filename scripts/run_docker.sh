#!/bin/bash

NV_GPU=1 nvidia-docker run --rm -v /mnt/backup2/sumi/sumi_repository/inertial_pose/transformer-inertial-poser:/root/transformer-inertial-poser -it nvcr.io/nvidia/pytorch:21.03-py3 /bin/bash

