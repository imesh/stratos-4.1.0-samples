#!/bin/sh

echo "Reading applications..."
curl -X GET -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/applications