#!/usr/bin/env bash

echo "Starting ComfyUI"
cd /ComfyUI

TCMALLOC="$(ldconfig -p | grep -Po "libtcmalloc.so.\d" | head -n 1)"
export LD_PRELOAD="${TCMALLOC}"

echo "Log file: /logs/comfyui.log"
echo "ComfyUI starting"
python3 main.py --listen 0.0.0.0 --port 3021 #> /logs/comfyui.log 2>&1