# Deploying Degen Token

This is a hardhat project in which we are deploying our contract on the avalanche fuji testnet, verifying the contract and also playing around with the different functions . Read the rules before you start the game :)

## Description

In the contract that we have deployed, Degen token (symbol-DGN) is created and also there's a Degen shop where there are 3 in-game items in which user can redeem any item if he has required number of tokens and it also has a self destruct function which a user can call, which basically removes all his tokens.. This contract is then deployed & verified on the avalanche fuji testnet.

## Getting Started

### Installing

You can run the code on gitpod by forking it or download the code and run the code locally.

### Executing program

In order to compile the code , you can run:

```
npx hardhat test
```

OR 

```
npx hardhat compile
```

You can run the following commandsto deploy and verify it on avalanche testnet

```
npx hardhat run scripts/deploy.js --network fuji
```

Copy the contract address after running the above command and paste it in the below command to verify that contract address

```
npx hardhat verify [contract_address] --network fuji
```

You can check your contract on snowtrace testnet, you can observe the green tick next to contract which means that it is verified.

## Authors

Sruthika Sivakumar

@sruthikaaas@gmail.com


## License

This project is licensed under the MIT License .
