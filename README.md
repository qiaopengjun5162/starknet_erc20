# starknet_erc20

StarkNet ERC20合约的实现。

## 实操

```shell
snforge init starknet_erc20
ls
cd starknet_erc20/
c
scarb build
scarb fmt
scarb test
snforge -h

scarb build

starkli declare target/dev/starknet_erc20_ERC20.contract_class.json --keystore ~/.starknet_accounts/key.json --account ~/.starknet_accounts/starkli.json --rpc https://starknet-testnet.public.blastapi.io/rpc/v0_6

starkli deploy 0x01c2a25ec4995f02c68fce7ea6de6da09e61d153bc85adaf5bb7a2985fefc2b4 str:Token str:TT 18 --keystore ~/.starknet_accounts/key.json --account ~/.starknet_accounts/starkli.json --rpc https://starknet-testnet.public.blastapi.io/rpc/v0_6
```

## 部署

```zsh
starknet_erc20 on  main [?] via 🅒 base took 4.0s 
➜ snforge test
   Compiling starknet_erc20 v0.1.0 (/Users/qiaopengjun/Code/cairo/starknet_erc20/Scarb.toml)
    Finished release target(s) in 1 second


Collected 2 test(s) from starknet_erc20 package
Running 0 test(s) from src/
Running 2 test(s) from tests/
[PASS] tests::test_contract::test_approve, gas: ~6744
[PASS] tests::test_contract::test_init, gas: ~5521
Tests: 2 passed, 0 failed, 0 skipped, 0 ignored, 0 filtered out

starknet_erc20 on  main [?] via 🅒 base 
➜ snforge -h
Usage: snforge <COMMAND>

Commands:
  test         Run tests for a project in the current directory
  init         Create a new directory with a Forge project
  clean-cache  Clean Forge cache directory
  help         Print this message or the help of the given subcommand(s)

Options:
  -h, --help     Print help
  -V, --version  Print version

starknet_erc20 on  main [?] via 🅒 base 
➜ scarb build
   Compiling starknet_erc20 v0.1.0 (/Users/qiaopengjun/Code/cairo/starknet_erc20/Scarb.toml)
    Finished release target(s) in 1 second

starknet_erc20 on  main [?] via 🅒 base 
➜ starkli declare target/dev/starknet_erc20_ERC20.contract_class.json --keystore ~/.starknet_accounts/key.json --account ~/.starknet_accounts/starkli.json --rpc https://starknet-testnet.public.blastapi.io/rpc/v0_6
Enter keystore password: 
Sierra compiler version not specified. Attempting to automatically decide version to use...
Network detected: goerli. Using the default compiler version for this network: 2.4.0. Use the --compiler-version flag to choose a different version.
Declaring Cairo 1 class: 0x01c2a25ec4995f02c68fce7ea6de6da09e61d153bc85adaf5bb7a2985fefc2b4
Compiling Sierra class to CASM with compiler version 2.4.0...
CASM class hash: 0x033b668884f56a2dbd54349da6e60ca24e7828a14fccb5b275ec4aa8ab60b605
Contract declaration transaction: 0x00d627e79cd0d74726a535dc3de49e444002e441833383f13be9c84888ebe2b5
Class hash declared:
0x01c2a25ec4995f02c68fce7ea6de6da09e61d153bc85adaf5bb7a2985fefc2b4

starknet_erc20 on  main [?] via 🅒 base 
➜ starkli deploy 0x01c2a25ec4995f02c68fce7ea6de6da09e61d153bc85adaf5bb7a2985fefc2b4 str:Token str:TT 18 --keystore ~/.starknet_accounts/key.json --account ~/.starknet_accounts/starkli.json --rpc https://starknet-testnet.public.blastapi.io/rpc/v0_6
Enter keystore password: 
Deploying class 0x01c2a25ec4995f02c68fce7ea6de6da09e61d153bc85adaf5bb7a2985fefc2b4 with salt 0x0798f3d5c9af6e76e6b7286cd88c8f1c851b3151280bd50f50541ca8f6a22280...
The contract will be deployed at address 0x01e776b22de0f44cca41242032f9f563e0b56d7d1ec5efd297710fc5b14b1a1f
Contract deployment transaction: 0x0237b5876b60bdeaef46456d13432fe68e8b958b6e5d46d2af9be2be54740033
Contract deployed:
0x01e776b22de0f44cca41242032f9f563e0b56d7d1ec5efd297710fc5b14b1a1f

starknet_erc20 on  main [?] via 🅒 base took 9.0s 
➜ 
```

## 更多

- <https://testnet.starkscan.co/contract/0x01e776b22de0f44cca41242032f9f563e0b56d7d1ec5efd297710fc5b14b1a1f#overview>
- <https://foundry-rs.github.io/starknet-foundry/starknet/declare.html>
- <https://book.starknet.io/ch02-05-testnet-deployment.html>
- <https://book.cairo-lang.org/ch99-00-starknet-smart-contracts.html>
