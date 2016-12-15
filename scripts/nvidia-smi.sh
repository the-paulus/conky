#!/bin/bash

NVIDIASMI=$(which nvidia-smi)

$NVIDIASMI --query-gpu=$1 --format=csv,noheader -i $2
