#!/bin/bash
read -p "User name for Sonotype Nexus: `echo $'\n> '`" USERNAME
read -sp "Password: `echo $'\n> '`" Password
read -e -p "Folder with .deb packages: `echo $'\n> '`" PATHF
nexusURL="https://registry.domain.com"
repositoryName="postgrespro-ent"

for file in `find $PATHF -type f -name "*.deb"`
do
    echo "Processing $file"
    curl -u "$USERNAME:$Password" -H "Content-Type: multipart/form-data" --data-binary "@$file" "$nexusURL/repository/$repositoryName/"
done