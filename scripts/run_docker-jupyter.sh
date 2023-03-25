#!/bin/bash

# docker run --gpus all --rm -v ./:/root/PIP -it suminmin/pip-rbdl-dev /bin/bash
# docker run --rm --runtime=nvidia -v ./:/root/PIP -it suminmin/pip-rbdl-dev /bin/bash
# docker run --rm --runtime=nvidia -v ./:/root/PIP -it rbdl-pip4 /bin/bash

PORT=31011
#docker run --rm --runtime=nvidia -v ./:/root/PIP -p $PORT:$PORT -it suminmin/pip-rbdl-dev /bin/bash
# docker run --rm --runtime=nvidia -v /mnt/backup2/sumi/sumi_repository/inertial_pose/PIP:/root/PIP -p $PORT:$PORT -it suminmin/pip-rbdl-dev /bin/bash


GPU=1 
NV_GPU=$GPU nvidia-docker run --rm -v /mnt/backup2/sumi/sumi_repository/inertial_pose/transformer-inertial-poser:/root/transformer-inertial-poser -p $PORT:$PORT -it nvcr.io/nvidia/pytorch:21.03-py3 /bin/bash
