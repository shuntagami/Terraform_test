#!/bin/bash
echo ECS_CLUSTER=sample-ecs-cluster >> /etc/ecs/ecs.config
echo ECS_ENABLE_AWSLOGS_EXECUTIONROLE_OVERRIDE=true >> /etc/ecs/ecs.config