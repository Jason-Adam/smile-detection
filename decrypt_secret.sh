#!/bin/sh
# Decrypt the creds.json file

# Create directory for secrets
mkdir "$HOME/secrets"

# Decrypt the file using repo variable
gpg --quiet \
    --batch \
    --yes \
    --decrypt \
    --passphrase="$CREDS_PASSPHRASE" \
    --output "$HOME/secrets/creds.json" creds.json.gpg
