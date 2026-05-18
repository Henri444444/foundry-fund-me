//SPDX-License-Identifiet: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../../src/FundMe.sol";
import {DeployFundMe} from "../../script/DeployFundMe.s.sol";
import {FundFundMe, WithdrawFundMe} from "../../script/Interactions.s.sol";

contract InteractionsTest is Test {
    FundMe fundMe;

    address USER = makeAddr("user");
    uint256 constant SEND_VALUE = 0.1 ether;
    uint256 constant STARTING_BALANCE = 110 ether;
    uint256 constant GAS_PRICE = 1;

    function setUp() external {
        DeployFundMe deploy = new DeployFundMe();
        fundMe = deploy.run();
        vm.deal(USER, STARTING_BALANCE);
    }
    
    function testUserCanFundInteractions() public {
    // 1. Setup the script
    FundFundMe fundFundMe = new FundFundMe();
    vm.deal(address(fundFundMe), STARTING_BALANCE);

    // 2. Fund the contract
    fundFundMe.fundFundMe(address(fundMe));

    // 3. CHECK IT HERE! (Before it's gone)
    address funder = fundMe.getFunder(0);
    assertEq(funder, address(fundFundMe));

    // 4. Now perform the withdrawal
    WithdrawFundMe withdrawFundMe = new WithdrawFundMe();
    withdrawFundMe.withdrawFundMe(address(fundMe));
    
    // 5. Optional: Check that the balance is now 0
    assertEq(address(fundMe).balance, 0);
}
}