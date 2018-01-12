#!/bin/bash

echo "Before_Install 123" > /home/ec2-user/Before_Install.txt

export PATH=~/.local/bin:$PATH

asg=`aws --region us-west-2 autoscaling describe-auto-scaling-instances --instance-ids i-0ec49f13f1a590bb7 --output text --query AutoScalingInstances[0].AutoScalingGroupName`

echo $asg > /home/ec2-user/asg_from_touch_1.txt

. $(dirname $0)/called_script_1.sh

