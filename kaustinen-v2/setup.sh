set -e

openssl rand -hex 32 | tr -d "\n" > /tmp/jwtsecret

sudo apt install -y git gcc g++ make cmake pkg-config llvm-dev libclang-dev clang protobuf-compiler

git clone https://github.com/nethermindeth/nethermind --recursive
cd nethermind
git checkout verkle/history
cd ..

git clone --depth 1 -b g11tech/verge https://github.com/ChainSafe/lodestar.git
cd lodestar
yarn install
yarn build



