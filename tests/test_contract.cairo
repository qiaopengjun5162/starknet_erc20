use starknet::ContractAddress;
use starknet::contract_address_const;

use snforge_std::{declare, start_prank, stop_prank, ContractClassTrait};

use starknet_erc20::erc20::ERC20;
use starknet_erc20::erc20::ERC20::{Event, Approval, Transfer};
use starknet_erc20::erc20::IERC20Dispatcher;
use starknet_erc20::erc20::IERC20DispatcherTrait;
use core::test::test_utils::assert_eq;
use starknet::syscalls::deploy_syscall;


const NAME: felt252 = 'Test Token';
const SYMBOL: felt252 = 'TST';
const DECIMALS: u8 = 18_u8;


fn deploy_contract(name: felt252) -> ContractAddress {
    let contract = declare(name);
    contract.deploy(@array![NAME, SYMBOL, 18]).unwrap()
}

#[test]
fn test_init() {
    let erc20_address = deploy_contract('ERC20');
    let erc20_token = IERC20Dispatcher { contract_address: erc20_address };
    assert(erc20_token.name() == NAME, 'Wrong token name');
    assert(erc20_token.symbol() == SYMBOL, 'Wrong token symbol');
    assert(erc20_token.decimals() == DECIMALS, 'Wrong token decimals');
    assert(erc20_token.total_supply() == 0, 'Wrong token total supply');
}

#[test]
fn test_approve() {
    let erc20_address = deploy_contract('ERC20');
    let erc20_token = IERC20Dispatcher { contract_address: erc20_address };

    let caller = contract_address_const::<'caller'>();
    let spender = contract_address_const::<'spender'>();
    let amount = 2000_u256;

    erc20_token.approve(spender, amount);
// assert_eq(@erc20_token.allowance(caller, spender), @amount, 'Approve should be equal to 2000');
}
