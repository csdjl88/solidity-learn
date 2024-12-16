// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract P3 {
    address public owner;
    uint private deposited;
    // 构造函数
    constructor(){
        owner = msg.sender;
    }
    // 定义状态修改器
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function withdraw() public onlyOwner {
        payable(owner).transfer(deposited);
    }
}
