#rm -rf nethermind/src/Nethermind/Nethermind.Runner/bin
cd nethermind/src/Nethermind/Nethermind.Runner
dotnet run -c release --config=kaustinen --Merge.TerminalTotalDifficulty=0 --Pruning.Mode=None --JsonRpc.EnginePort=8551 \
--Network.DiscoveryPort=30303 --JsonRpc.JwtSecretFile=/tmp/jwtsecret --Init.AutoDump Parity