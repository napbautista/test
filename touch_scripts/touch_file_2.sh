#!/bin/bash

echo "After_Install 123" > /home/ec2-user/After_Install.txt

. $(dirname $0)/called_script_2.sh

asg=`aws --region us-west-2 autoscaling describe-auto-scaling-instances --instance-ids i-0ec49f13f1a590bb7 --output text --query AutoScalingInstances[0].AutoScalingGroupName`

echo $asg > /home/ec2-user/asg_2.txt
