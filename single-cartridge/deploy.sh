#!/bin/sh 

curl -X POST -H "Content-Type: application/json" -d @'artifacts/autoscale-policy.json' -k -v -u admin:admin https://localhost:9443/api/autoscalingPolicies

sleep 1

curl -X POST -H "Content-Type: application/json" -d @'artifacts/tomcat-cartridge.json' -k -v -u admin:admin https://localhost:9443/api/cartridges

sleep 5

curl -X POST -H "Content-Type: application/json" -d @'artifacts/application.json' -k -v -u admin:admin https://localhost:9443/api/applications

sleep 5 
curl -X POST -H "Content-Type: application/json" -d@'artifacts/deployment-policy.json' -k -v -u admin:admin https://localhost:9443/api/application/single-cartridge-app/deploy

