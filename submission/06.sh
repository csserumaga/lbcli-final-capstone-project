# Only one tx in block 243,821 signals opt-in RBF. What is its txid?
blockHash=$(bitcoin-cli -signet getblockhash 243821)

rbfTx=$(bitcoin-cli -signet getblock "$blockHash" 2 | jq -r '.tx[] | select(any(.vin[]?; .sequence < 4294967294)) | .txid')

