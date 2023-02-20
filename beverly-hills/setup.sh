openssl rand -hex 32 | tr -d "\n" > /tmp/jwtsecret

mkdir teku
cd teku
wget https://artifacts.consensys.net/public/teku/raw/names/teku.tar.gz/versions/23.1.1/teku-23.1.1.tar.gz
tar -xvf teku-23.1.1

cd ..
git clone https://github.com/nethermindeth/nethermind --recursive
cd nethermind
git checkout beverly-hills
cd ..
