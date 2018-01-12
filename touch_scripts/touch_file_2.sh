#!/bin/bash

echo "After_Install 123" > /home/ec2-user/After_Install.txt

export PATH=~/.local/bin:$PATH

. $(dirname $0)/called_script_2.sh

