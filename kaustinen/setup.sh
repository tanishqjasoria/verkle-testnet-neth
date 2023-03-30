set -e

openssl rand -hex 32 | tr -d "\n" > /tmp/jwtsecret

sudo apt install -y git gcc g++ make cmake pkg-config llvm-dev libclang-dev clang protobuf-compiler

wget https://github.com/tanishqjasoria/lighthouse/releases/download/verkle-full/lighthouse-verkle-full-x86_64-unknown-linux-gnu.tar.gz
tar -xvf lighthouse-verkle-full-x86_64-unknown-linux-gnu.tar.gz

git clone https://github.com/nethermindeth/nethermind --recursive
cd nethermind
git checkout kaustinen-testnet
cd ..
