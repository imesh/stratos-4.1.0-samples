echo "Adding application signup..."
curl -X POST -H "Content-Type: application/json" -d @'artifacts/application-signup.json' -k -u admin:admin https://localhost:9443/api/applications/single-cartridge-app/signups