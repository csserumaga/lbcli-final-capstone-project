# Which tx in block 216,351 spends the coinbase output of block 216,128?

coinbaseHash=$(bitcoin-cli -signet getblockhash 216128)

coinbaseTx=$(bitcoin-cli -signet getblock "$coinbaseHash" | jq -r '.tx[0]')

spendingHash=$(bitcoin-cli -signet getblockhash 216351)

spendingTx=$(bitcoin-cli -signet getblock "$spendingHash" 2 | jq -r --arg coinbaseTx "$coinbaseTx" '.tx[] | select(any(.vin[]?; .txid == $coinbaseTx)) | .txid')

echo "$spendingTx"
