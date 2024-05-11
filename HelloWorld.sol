// SPDX-License-Identifier: MIT
// 版权声明8.0以后强制添加
pragma solidity ^0.8.10;
// ^指大于当前X版本 小于X+1版本，或者 >=0.4.0 <0.7.0
contract HelloWorld {
    // 状态变量
    uint public myUint = 123;

    //https://web3dao-cn.github.io/solidity-example/variables/
    //https://web3dao-cn.github.io/solidity-example/variables/

    //contract 合约  合约名称

    // string 字符串类型
    // public 公共可见
    // greet 变量名

    string public greet = "Hello World!";

    // 变量类型
    bool public b = true; // 布尔值
    uint public u = 123; //  uint = uint256  ranges from 0 to 2 ** 256 - 1
    //         uint8    ranges from 0 to 2 ** 8 - 1
    //         uint16   ranges from 0 to 2 ** 16 - 1

    int public i = -123; //  int =  int256    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    //  int128 ranges from -2 ** 127 to 2 ** 127 - 1
    int public minInt = type(int).min; // 最小值
    int public minInt = type(int).max; // 最大值

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c; // 地址类型 16位
    bytes32 public b32 = 0X666666; // 地址类型 32位

    // 默认值
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
        // external 外部可以读取
        // pure 纯函数,不能够读写状态变量，不对链上做读写操作
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }
}
