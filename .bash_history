ls
pwd
ls
vim /etc/passwd
pwd
ls
docker ps
 docker exec -it cli bash
ls
cat initnetwork.sh
docker-compose -f docker-compose-cli.yaml down
rm -rf crypto-config
rm -rf channel-artifacts
mkdir channel-artifacts
ls
cryptogen generate --config=./crypto-config.yaml
configtxgen -profile ThreeOrgsOrdererGenesis -channelID mychannel -outputBlock ./channel-artifacts/genesis.block
configtxgen -profile ThreeOrgsChannel -outputCreateChannelTx ./channel-artifacts/channel.tx -channelID mychannel
configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org1MSPanchors.tx -channelID mychannel -asOrg Org1MSP
configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org2MSPanchors.tx -channelID mychannel -asOrg Org2MSP
configtxgen -profile ThreeOrgsChannel -outputAnchorPeersUpdate ./channel-artifacts/Org3MSPanchors.tx -channelID mychannel -asOrg Org3MSP
ls
docker-compose -f docker-compose-cli.yaml up -d
 docker exec -it cli bash
docker-compose -f docker-compose-cli.yaml down --volumes --remove-orphans
sudo docker rm -f $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
sudo  docker volume prune
docker ps
ls
docker-compose -f docker-compose-cli.yaml up -d
 docker exec -it cli bash
docker-compose -f docker-compose-cli.yaml down --volumes --remove-orphans
docker rm -f $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
sudo docker rm -f $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
sudo docker rm $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
docker rm -f $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
docker rm -rf $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
docker rm --help
docker stop $(docker ps -q) & docker rm $(docker ps -aq)
docker stop $(docker ps -q)
docker rm -f  $(docker ps -aq)
sudo docker rm -v
docker ps -a
docker container prune
ls
docker-compose -f docker-compose-cli.yaml down --volumes --remove-orphans
sudo docker rm -f $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
sudo  docker volume prune
exit
