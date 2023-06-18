# FAQ of Primary PFP
See FAQ [here](https://github.com/ForeverPFP/primary-pfp-contract/blob/main/faq.md)

# How to run the project
Install [foundry](https://book.getfoundry.sh/)

- build
```
forge build
```

- test
```
forge test 
```

- gas-report
```
forge test --gas-report
```

- deploy and verify in etherscan
```
forge create --rpc-url {rpc_url} \
    --private-key {private_key} \
    --etherscan-api-key {ethercan_api_key} \
    --verify \
    src/PrimaryPFP.sol:PrimaryPFP --constructor-args 0x00000000000076A84feF008CDAbe6409d2FE638B
```

## Goerli Testnet Contract Address

| Name | address |
| --- | --- |
| PrimaryPFP | [0x8F025a3A6a98db818Eeb64486Ba36dd516aB530E](https://goerli.etherscan.io/address/0x8F025a3A6a98db818Eeb64486Ba36dd516aB530E) |
| delegate.cash | [0x00000000000076A84feF008CDAbe6409d2FE638B](https://goerli.etherscan.io/address/0x00000000000076A84feF008CDAbe6409d2FE638B) |

## Mainnet Contract Address
| Name | address |
| --- | --- |
| delegate.cash | [0x00000000000076A84feF008CDAbe6409d2FE638B](https://etherscan.io/address/0x00000000000076A84feF008CDAbe6409d2FE638B) |


# Thanks for the innovators
This project is inspired by [Primary ENS Name](https://app.ens.domains/faq#what-is-a-primary-ens-name-record), [ForeverPunk](https://twitter.com/ForeverpunksCom) and [delegate.cash](https://delegate.cash).
