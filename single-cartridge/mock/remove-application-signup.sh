echo "Removing application signup..."
curl -X DELETE -H "Content-Type: application/json" -k -u admin:admin https://localhost:9443/api/applications/single-cartridge-app/signups/$1