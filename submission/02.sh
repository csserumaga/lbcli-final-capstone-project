# How many new outputs were created by block 243,825?
<<<<<<< HEAD
blockhash=$(bitcoin-cli -signet getblockhash 243825)

inputs=$(bitcoin-cli -signet getblock "$blockhash" 2 | jq '[.tx[].vin[] | select(.txid != null)] | length')

echo "$inputs"
=======
bitcoin-cli -signet getblockstats 243825 '["outs"]' | jq -r '.outs'
>>>>>>> babfef7 ( fixed 2nd file)
