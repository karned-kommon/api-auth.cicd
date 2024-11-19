# keycloack-k8s


## Génération des secrets
```sh
DB_USERNAME=$(openssl rand -base64 12 | tr -dc 'a-z' | head -c 8)
DB_PASSWORD=$(openssl rand -base64 12 | tr -dc 'A-Za-z0-9' | head -c 36)

echo $DB_USERNAME
echo $DB_PASSWORD

kubectl create secret generic keycloak-db-secret \
  --from-literal=DB_USERNAME=$DB_USERNAME \
  --from-literal=DB_PASSWORD=$DB_PASSWORD \
  -n koden


ADMIN_USERNAME=$(openssl rand -base64 12 | tr -dc 'a-z' | head -c 8)
ADMIN_PASSWORD=$(openssl rand -base64 12 | tr -dc 'A-Za-z0-9' | head -c 36)

echo $ADMIN_USERNAME
echo $ADMIN_PASSWORD

kubectl create secret generic keycloak-admin-secret \
  --from-literal=ADMIN_USERNAME=$ADMIN_USERNAME \
  --from-literal=ADMIN_PASSWORD=$ADMIN_PASSWORD \
  -n koden
```

## installation
```sh
helm install keycloak . -f values.yaml -n koden
```

## Mise à jour
```sh 
helm upgrade keycloak . -f values.yaml -n koden
```