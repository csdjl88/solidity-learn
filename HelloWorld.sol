// SPDX-License-Identifier: MIT
// 版权声明8.0以后强制添加
pragma solidity ^0.8.10;
// ^指大于当前X版本 小于X+1版本，或者 >=0.4.0 <0.7.0
contract HelloWorld {
    // contract 合约 关键字,一个 Solidity 的 .sol 文件可以包含一个或多个 contract。每一个 contract 对应着一个地址，且不可更改
    // 对于合约的命名，我们建议遵循“大驼峰”的命名规范，“大驼峰”是指每个单词的首字母都大写，例如：MyContract

    // 1.变量
    // 无符号整型变量 uint ，无符号整形只能是正整数。
    uint public u = 123; //  uint = uint256  ranges from 0 to 2 ** 256 - 1
    uint public u8 = 8; //   uint8    ranges from 0 to 2 ** 8 - 1
    uint public u16 = 16; //         uint16   ranges from 0 to 2 ** 16 - 1

    // 有符号的整型变量 int，表示方式，它可以表示正整数，零，以及负整数。
    int public i = -123; //  int =  int256    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 public i128 = -216; //  int128 ranges from -2 ** 127 to 2 ** 127 - 1

    // int 类型的最大值与最小值的取值
    int public minInt = type(int).min; // 最小值
    int public minInt = type(int).max; // 最大值
    // 1.1 bit 
    // 一个 bit 是二进制数字的一个数字（1 或 0）。2 个 bit 意味着有两个数字：00、01、10、11，可以表示 4 个不同的数字。
    // 而 uint 类型可以指定其存储多少比特位，像这样：uint128
    
    // 2. 布尔值
    bool public b = true; // 布尔值
    // 3. 地址变量
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c; // 地址类型 16位
    // 4. 字节数组
    bytes32 public b32 = 0x4f50455241544f525f524f4c4500000000000000000000000000000000000000; // 32位
    // 5. 字符串
    string public greet = "Hello World!";

    // 6. 一些常见变量的默认值
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000




    // 状态变量
    uint public myUint = 123;

    // https://web3dao-cn.github.io/solidity-example/variables/

    // string 字符串类型
    // public 公共可见
    // greet 变量名

 






    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
        // external 外部可以读取
        // pure 纯函数,不能够读写状态变量，不对链上做读写操作
    }

    function sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }
}
