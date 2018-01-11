#!/bin/bash

echo "After_Install 123" > /home/ec2-user/After_Install.txt

. $(dirname $0)/called_script_2.sh

