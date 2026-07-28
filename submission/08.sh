# what block height was this tx mined ?
txid="49990a9c8e60c8cba979ece134124695ffb270a98ba39c9824e42c4dc227c7eb"

blockHash=$(bitcoin-cli -signet getrawtransaction "$txid" true | jq -r '.blockhash')

height=$(bitcoin-cli -signet getblockheader "$blockHash" | jq -r '.height')

echo "$height"


