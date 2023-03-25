#!/bin/bash

pip install -r requirements.txt

# mkdir dependencies
cd dependencies 

# git clone https://github.com/jyf588/fairmotion.git
cd fairmotion
pip install -e .
