// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract P4 {
    constructor(){
        // ABI
        //  ABI：Application Binary Interface 应⽤程序⼆进制接⼝
        //• ABI 接⼝描述： 定义如何与合约交互
        //• ABI 编码
        //• 函数选择器：对函数签名计算Keccak-256哈希，取前 4 个字节
        //• 参数编码

        // 函数选择器
        // bytes4(keccak256(“count()”)) = 0x06661abd

        // abi.encodeWithSignature(string sigs)

    }

    function callCount(Counter c) public {
        c.count();
    }
    // 等价于上面的callCount
    function lowCallCount(address c) public {
        bytes memory methodData = abi.encodeWithSignature("count()");
        c.call(methodData); // 0x06661abd
    }

    // 底层调⽤，需要自己处理错误
    // 底层函数：call，delegatecall，staticcall（不修改状态）
    // 底层函数 不知道下面调用什么，底层调用就没有限制(包括gass)
    // 底层调⽤失败不是发⽣异常（ revert）， ⽽是⽤返回值表示
    // call()： 切换上下⽂，new一个方法使用，修改目标合约状态
    // delegatecall()： 保持上下文，（对象，值）。理解成借用方法，合约环境还是当前环境

    // 事件
    // 合约与外部的重要接⼝，通知外部链上状态的变化
    // 事件有时也作为便宜的存储
    // 使⽤关键字 event 定义事件，事件不需要实现
    // 使⽤关键字 emit 触发事件• 事件中使⽤ indexed 修饰，表示对这个字段建⽴索引，⽅便外部对该字段过滤查

    mapping(address => uint) public deposit;

    event Deposit(address indexed addr, uint val);

    function deposit(uint value) public {
        deposit[msg.sender] = value;
        emit Deposit(msg.sender, value);

    }

    // 库
    // abstract 代码库
    // 与合约类似（⼀个特殊合约），是函数的封装，⽤于代码复⽤。 library 定义 库
    // 如果库函数都是 internal 的，库代码会嵌⼊到合约。
    // 如果库函数有external 或 public ，库需要单独部署，并在部署合约时进⾏链接，使⽤委托调⽤
    // 没有状态变量（library）
    // 不能给库发送 Ether （library）• 给类型扩展功能：Using lib for type; 如： using SafeMath for uint;


    // 1:06:03

}
