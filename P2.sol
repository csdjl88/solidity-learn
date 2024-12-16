// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract P2 {
    // function

    function functionName([parameter types[, ...]]) {internal|external|public|private} [pure|view|payable] [virtual|override] [<modifiers>]
    [returns (<return types>)]
    {
    // 函数名称
    functionName 
    // 圆括号内写入函数的参数，入参&参数类型
    [parameter types[, ...]]
    //函数可见性说明符，共有4种 
    internal|external|public|private

    public：内部和外部均可见。
    private：只能从本合约内部访问，继承的合约也不能使用。
    external：只能从合约外部访问（但内部可以通过 this.f() 来调用，f是函数名）。
    internal: 只能从合约内部访问，继承的合约可以用。

    //决定函数权限/功能的关键字
    pure|view|payable

    // 法是否可以被重写，或者是否是重写方法。virtual用在父合约上，标识的方法可以被子合约重写。override用在自合约上，表名方法重写了父合约的方法。
    [virtual|override]

    // 自定义的修饰器，可以有0个或多个修饰器
    <modifiers>
    //函数返回的变量类型和名称

    [returns (<return types>)]
    // 函数体
    // <function body>

    }


    pure，中文意思是“纯”，这里可以理解为”纯打酱油的”。pure 函数既不能读取也不能写入链上的状态变量。

    view，“看”，这里可以理解为“看客”。view函数能读取但也不能写入状态变量。

    非 pure 或 view 的函数既可以读取也可以写入状态变量。

    // pure: 纯纯牛马
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
        // external 外部可以读取
        // pure 纯函数,不能够读写状态变量，不对链上做读写操作
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }


    // view: 看客
    function addView() external view returns(uint256 new_number) {
        // number 指的是public里面的变量
        new_number = number + 1;
    }

    //合约特殊函数 
    // 构造函数(constructor): 初始化逻辑
    // getter 函数: 所有 public 状态变量创建 getter 函数
    // receive 函数: 接收以太币时回调。
    // fallback 函数: 没有匹配函数标识符时, fallback 会被调⽤，如果是转账时，没有 receive 也有调⽤ fallback
}
