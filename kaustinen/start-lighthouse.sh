./lighthouse --debug-level=info --datadir=eth2/ --testnet-dir=config bn --port=9000 --discovery-port=9000 --eth1 \
--boot-nodes=enr:-Ly4QADTgVhi78nGZNO2KFZ9bpoTvOk7X4EiZpGk3jQEOZCgMLnQGcuRmQVbeXkVXKWOyRNJVToqb4noG4PDY0MLJ6IBh2F0dG5ldHOIAAAAAAAAAACEZXRoMpCHKuKCAAaUIv__________gmlkgnY0gmlwhLI-49qJc2VjcDI1NmsxoQJOH-OLwg3N8Sd3DX8B0ObCsjbcBwn0oIClOheiybKaBYhzeW5jbmV0cwCDdGNwgiMog3VkcIIjKA \
--http --http-address=0.0.0.0 --http-port=4000 --metrics --metrics-address=0.0.0.0 --metrics-port=8000 \
--listen-address=0.0.0.0 --graffiti=lighthouse-geth --target-peers=25 --http-allow-sync-stalled --execution-endpoint=http://127.0.0.1:8551 \
--suggested-fee-recipient=0xf97e180c050e5Ab072211Ad2C213Eb5AEE4DF134 --jwt-secrets=/tmp/jwtsecret --prune-payloads=false