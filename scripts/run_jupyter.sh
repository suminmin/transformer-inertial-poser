#!/bin/bash

jupyter lab --port $1 --ip 0.0.0.0 --allow-root --NotebookApp.token=$2

