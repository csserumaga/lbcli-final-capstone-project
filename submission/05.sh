# How many satoshis did this transaction pay for fee?: b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb
#!/usr/bin/env bash

txid="b71fb9ab7707407cc7265591e0c0d47d07afede654f91de1f63c0cb522914bcb"

fee=$(bitcoin-cli -signet getrawtransaction "$txid" 2 | jq '(.fee * 100000000 | round)')

echo "$fee"
