# Deploying Degen Token

This is a hardhat project in which we are deploying our contract on the avalanche fuji testnet.

## Description

In the contract that we have deployed, Degen token (symbol-DGN) is created and also there's a Degen shop where there are 5 shop items in which user can redeem any item if he has required number of tokens. This contract is then deployed & verified on the avalanche fuji testnet.

## Getting Started

### Installing

You can run the code on gitpod by forking it or download the code and run the code locally.

### Executing program

You can run the following commands to test, compile, deploy and verify it on avalanche testnet

```
npx hardhat help
```

```
npx hardhat test
```

```
REPORT_GAS=true npx hardhat test
```

```
npx hardhat node
```

```
npx hardhat run scripts/deploy.js --network fuji
```

```
npx hardhat verify [contract_address] --network fuji
```


## Authors

Sruthika Sivakumar

@sruthikaaas@gmail.com


## License

This project is licensed under the MIT License .
