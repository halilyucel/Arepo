// SPDX-License-Identifier: GPL-3.0-or-later

pragma solidity ^0.8.12;

contract Arepo {
    address public creator;
    uint256 public balance;

    constructor() {
        creator = msg.sender;
    }

    receive() payable external {
        balance = balance + msg.value;
    }
}
