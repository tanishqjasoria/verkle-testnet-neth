set -e

openssl rand -hex 32 | tr -d "\n" > /tmp/jwtsecret

sudo apt install -y git gcc g++ make cmake pkg-config llvm-dev libclang-dev clang protobuf-compiler

git clone https://github.com/sigp/lighthouse.git lighthouse-git
cd lighthouse-git
git remote add macladson https://github.com/macladson/lighthouse.git
git fetch macladson
git checkout verkle-trees-full
make
cp target/release/lighthouse ../.
cd ..

# mkdir teku
# cd teku
# wget https://artifacts.consensys.net/public/teku/raw/names/teku.tar.gz/versions/23.1.1/teku-23.1.1.tar.gz
# tar -xvf teku-23.1.1.tar.gz
#cd ..

git clone https://github.com/nethermindeth/nethermind --recursive
cd nethermind
git checkout verkle/kaustinen
cd ..


curl https://rpc.kaustinen.ethpandaops.io/ \
  -X POST \
  -H "Content-Type: application/json" \
  --data '{"method":"eth_getBlockByNumber","params":["0",false],"id":1,"jsonrpc":"2.0"}'