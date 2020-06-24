docker-compose -f docker-compose-cli.yaml down




rm -rf crypto-config

rm -rf channel-artifacts

mkdir channel-artifacts


configtxgen -profile ThreeOrgsOrdererGenesis -channelID mychannel -outputBlock ./channel-artifacts/genesis.block

configtxgen -profile ThreeOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID mychannel



configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx -channelID mychannel -asOrg Org1MSP

configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors.tx -channelID mychannel -asOrg Org2MSP

configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org3MSPanchors.tx -channelID mychannel -asOrg Org3MSP


docker-compose -f docker-compose-cli.yaml up -d


