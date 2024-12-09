// SPDX-License-Identifier: MIT
// 版权声明8.0以后强制添加
pragma solidity ^0.8.10;
// ^指大于当前X版本 小于X+1版本，或者 >=0.4.0 <0.7.0
contract HelloWorld {
    // contract 合约 关键字,一个 Solidity 的 .sol 文件可以包含一个或多个 contract。每一个 contract 对应着一个地址，且不可更改
    // 对于合约的命名，我们建议遵循“大驼峰”的命名规范，“大驼峰”是指每个单词的首字母都大写，例如：MyContract
    // 1. 布尔值
    bool public _bool = true; // 布尔值
    // 布尔运算
    bool public _bool1 = !_bool; // 取非
    bool public _bool2 = _bool && _bool1; // 与
    bool public _bool3 = _bool || _bool1; // 或
    bool public _bool4 = _bool == _bool1; // 相等
    bool public _bool5 = _bool != _bool1; // 不相等

    // 值得注意的是：&& 和 || 运算符遵循短路规则，这意味着，假如存在 f(x) || g(y) 的表达式，如果 f(x) 是 true，g(y) 不会被计算，即使它和 f(x) 的结果是相反的。
    // 假如存在f(x) && g(y) 的表达式，如果 f(x) 是 false，g(y) 不会被计算。 所谓“短路规则”，一般出现在逻辑与（&&）和逻辑或（||）中。
    // 当逻辑与（&&）的第一个条件为false时，就不会再去判断第二个条件； 当逻辑或（||）的第一个条件为true时，就不会再去判断第二个条件，这就是短路规则。

    // 2.整型

    // 无符号整型变量 uint ，无符号整形只能是正整数。
    uint public u = 123; //  uint = uint256  ranges from 0 to 2 ** 256 - 1
    uint public u8 = 8; //   uint8    ranges from 0 to 2 ** 8 - 1
    uint public u16 = 16; //         uint16   ranges from 0 to 2 ** 16 - 1
    uint256 public u256 = 20220330; // 256位无符号整数

    // 有符号的整型变量 int，表示方式，它可以表示正整数，零，以及负整数。
    int public i = - 123; //  int =  int256    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 public i128 = - 216; //  int128 ranges from -2 ** 127 to 2 ** 127 - 1

    // int 类型的最大值与最小值的取值
    int public minInt = type(int).min; // 最小值
    int public minInt = type(int).max; // 最大值

    // 2.1 bit
    // 一个 bit 是二进制数字的一个数字（1 或 0）。2 个 bit 意味着有两个数字：00、01、10、11，可以表示 4 个不同的数字。
    // 而 uint 类型可以指定其存储多少比特位，像这样：uint128
    uint256 public _number = 20220330; // 256位无符号整数
    //比较运算符（返回布尔值）： <=， <，==， !=， >=， >
    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2 ** 2; // 指数
    uint256 public _number3 = 7 % 2; // 取余数
    bool public _numberbool = _number2 > _number3; // 比大小

    // 3. 地址变量
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c; // 地址类型 16位
    address payable public _address1 = payable(addr); // payable address，可以转账、查余额
    // 地址类型的成员
    uint256 public balance = _address1.balance; // balance of address

    // 4. 定长字节数组
    bytes32 public b32 = 0x4f50455241544f525f524f4c4500000000000000000000000000000000000000; // 32位
//    字节数组分为定长和不定长两种：

//        定长字节数组: 属于值类型，数组长度在声明之后不能改变。根据字节数组的长度分为 bytes1, bytes8, bytes32 等类型。定长字节数组最多存储 32 bytes 数据，即bytes32。
//        不定长字节数组: 属于引用类型（之后的章节介绍），数组长度在声明之后可以改变，包括 bytes 等。

    // 5. 字符串
    string public greet = "Hello World!";

    // 6.枚举 enum
    // 用enum将uint 0， 1， 2表示为Buy, Hold, Sell
    enum ActionSet {Buy, Hold, Sell}
    // 创建enum变量 action
    ActionSet action = ActionSet.Buy;

    // 7. 一些常见变量的默认值
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





}
