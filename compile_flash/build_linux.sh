#!/bin/bash
# Set the script filename
SCRIPT_NAME="../sn8/flashsn8.py"
OUTPUT_NAME="flashsn8"

# Run Nuitka to build the executable
pip install libusb1
pip install nuitka
nuitka --standalone --remove-output --output-dir=linux_x86-64 --output-filename=$OUTPUT_NAME --assume-yes-for-downloads --user-package-configuration-file=config.yaml $SCRIPT_NAME

echo "Build complete: $OUTPUT_NAME"