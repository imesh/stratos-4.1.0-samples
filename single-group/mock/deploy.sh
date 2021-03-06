#!/bin/sh 
set -e

echo "Adding autoscaling policy..."
curl -X POST -H "Content-Type: application/json" -d @'artifacts/autoscale-policy.json' -k -u admin:admin https://localhost:9443/api/autoscalingPolicies

sleep 1

echo "Adding tomcat cartridge..."
curl -X POST -H "Content-Type: application/json" -d @'artifacts/tomcat-cartridge.json' -k -u admin:admin https://localhost:9443/api/cartridges

sleep 1

echo "Adding mysql cartridge..."
curl -X POST -H "Content-Type: application/json" -d @'artifacts/mysql-cartridge.json' -k -u admin:admin https://localhost:9443/api/cartridges

sleep 1

echo "Adding cartridge group..."
curl -X POST -H "Content-Type: application/json" -d @'artifacts/cartridge-group.json' -k -u admin:admin https://localhost:9443/api/groups

sleep 1

echo "Adding application..."
curl -X POST -H "Content-Type: application/json" -d @'artifacts/application.json' -k -u admin:admin https://localhost:9443/api/applications

sleep 2

echo "Deploying application..."
curl -X POST -H "Content-Type: application/json" -d@'artifacts/deployment-policy.json' -k -u admin:admin https://localhost:9443/api/applications/single-group-app/deploy

