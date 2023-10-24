cd nethermind/src/Nethermind/Nethermind.Runner
dotnet run -c release --config=kaustinen --Merge.TerminalTotalDifficulty=0 --JsonRpc.Host=0.0.0.0 --Pruning.Mode=None --JsonRpc.EngineHost=0.0.0.0 --JsonRpc.EnginePort=8551 \
--Network.DiscoveryPort=30303 --JsonRpc.JwtSecretFile=/tmp/jwtsecret --Init.AutoDump Parity