set -e

openssl rand -hex 32 | tr -d "\n" > /tmp/jwtsecret

sudo apt install -y git gcc g++ make cmake pkg-config llvm-dev libclang-dev clang protobuf-compiler

wget https://github.com/tanishqjasoria/lighthouse/releases/download/verkle-full/lighthouse-verkle-full-x86_64-unknown-linux-gnu.tar.gz
tar -xvf lighthouse-verkle-full-x86_64-unknown-linux-gnu.tar.gz

# mkdir teku
# cd teku
# wget https://artifacts.consensys.net/public/teku/raw/names/teku.tar.gz/versions/23.1.1/teku-23.1.1.tar.gz
# tar -xvf teku-23.1.1.tar.gz
#cd ..

git clone https://github.com/nethermindeth/nethermind --recursive
cd nethermind
git checkout verkle/kaustinen
cd ..


# curl https://rpc.kaustinen.ethpandaops.io/ \
#   -X POST \
#   -H "Content-Type: application/json" \
#   --data '{"method":"eth_getBlockByNumber","params":["0x0",false],"id":1,"jsonrpc":"2.0"}'
#
#
# curl https://rpc.kaustinen.ethpandaops.io/ \
#   -X POST \
#   -H "Content-Type: application/json" \
#   --data '{"method":"eth_getBlockByHash","params":["0x9719e33386a223b9cac72e3923bc4fd94f2c28a6c61e3aca7977d9af7c5e54f3",false],"id":1,"jsonrpc":"2.0"}'