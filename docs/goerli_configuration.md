# Etheratom installation
[Etheratom installation](https://github.com/0mkara/etheratom#installation)

# Goerli Testnet Configuration with Etheratom

  1. Install geth & eth
```
sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum
```           
  2. Clone repository:
```
git clone git@github.com:ethereum/go-ethereum.git
cd go-ethereum
```

  3. `make geth` - This will create a geth  executable file in the go-ethereum/build/bin folder that you can move wherever you want to run from.
  4. Creating an account:
```
geth account new
```
  5. Run the following command to initialize the goerli test network:
```
./build/bin/geth --goerli --rpc --rpcaddr=YOUR_LOCAL_IP --rpcapi="eth,web3,personal" --ws --wsaddr=YOUR_LOCAL_IP --wsorigins="*" --wsapi="eth,web3,personal" --keystore YOUR_KEYSTORE_PATH console
```
>  Default keystore path: ~/.ethereum/keystore

Note: If there is any issue with block synchronization, you need to delete the **geth chaindata** and reinitialize the foerli test network.
```
rm -rf /home/USER_NAME/.ethereum/goerli/geth/chaindata
```

6. Connection with Etheratom:
```
Rpc endpoint: http://192.168.0.6:8545/
Websocket endpoint: ws://192.168.0.6:8546/
```
