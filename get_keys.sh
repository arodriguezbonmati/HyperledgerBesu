#!/bin/bash

# Get public key
/data/besu/bin/besu public-key export --to=/data/besu/keys/besu/key.pub

# Get node's address
/data/besu/bin/besu public-key export-address --to=/data/besu/keys/besu/nodeAddress

# Move new private key to the keys directory
mv /data/besu/key /data/besu/keys/besu/key

# Build enode and move it to the keys directory.
pubkey=$(cat /data/besu/keys/besu/key.pub)
pubkey="${pubkey:2}"
ip=$(ifconfig enp0s3 | grep "inet " | awk '{print $2}')

enode="enode://$pubkey@$ip:30303"
echo $enode > /data/besu/keys/besu/enode
