#!/bin/sh

applicationId=$1
if [ -z "$applicationId" ]; then
	echo "Usage: get-application.sh [application-id]"
else
	echo "Reading application: $applicationId"
	curl -X GET -H "Content-Type: application/json" -k -v -u admin:admin https://localhost:9443/api/applications/$applicationId
fi