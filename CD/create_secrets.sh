kubectl create secret generic keycloak-secret \
  --from-literal=KEYCLOAK_HOST="https://www.urlserveur.bzh" \
  --from-literal=KEYCLOAK_REALM="myrealm" \
  --from-literal=KEYCLOAK_CLIENT_ID="myid" \
  --from-literal=KEYCLOAK_CLIENT_SECRET="mypassword"