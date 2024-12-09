// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract P2 {
//    function

    function functionTypes([parameter types[, ...]]) {internal|external|public|private} [pure|view|payable] [virtual|override] [<modifiers>]
    [returns (<return types>)]
    {
    [parameter types[, ...]]

    internal|external|public|private


    pure|view|payable] [virtual|override

    <modifiers>

    [returns (<return types>)]

//    <function body>

    }



    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
        // external 外部可以读取
        // pure 纯函数,不能够读写状态变量，不对链上做读写操作
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }
}
