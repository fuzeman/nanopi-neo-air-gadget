#!/usr/bin/env bash

# Ensure .snapcraft/ directory exists
mkdir .snapcraft/

# Decrypt snapcraft credentials
openssl aes-256-cbc \
  -K $encrypted_aa15611d46b0_key \
  -iv $encrypted_aa15611d46b0_iv \
  -in .travis/snapcraft.cfg \
  -out .snapcraft/snapcraft.cfg -d
