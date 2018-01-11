#!/bin/bash

echo "Before_Install 123" > /home/ec2-user/Before_Install.txt

. $(dirname $0)/called_script_1.sh
