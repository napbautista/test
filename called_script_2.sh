#!/bin/bash

echo "Called Script 2" > /home/ec2-user/Called_By_Touch_Script_2.txt

asg=`aws --region us-west-2 autoscaling describe-auto-scaling-instances --instance-ids i-0ec49f13f1a590bb7 --output text --query AutoScalingInstances[0].AutoScalingGroupName`

echo $asg > /home/ec2-user/asg_2.txt
