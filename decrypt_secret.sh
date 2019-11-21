#!/bin/sh
# Decrypt the creds.json file

# Create directory for secrets
mkdir "$HOME/.aws"

# Decrypt the file using repo variable
gpg --quiet \
    --batch \
    --yes \
    --decrypt \
    --passphrase="$CREDS_PASSPHRASE" \
    --output "$HOME/.aws/config" config.gpg
