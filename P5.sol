// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract P5 {
    constructor(){
        // 应用，token / NFT


        // OpenZeppelin 类似于一个库，提供了许多功能，可以直接使用。
        // OpenZeppelin 功能丰富：实现了众多 ERC 标准。
        // ⽂档：https://docs.openzeppelin.com/contracts/4.x/

        // ERC20 特点

        // 最常⽤的代币标准，使去中⼼化交易所、钱包、⽀付系统⽆缝对接，繁荣了⽣态
        // 注意与以太币不同：以太币（Coin）原⽣币， ERC20 （Token） 智能合约币. (WETH)

        // ERC20 标准
        // https://github.com/ethereum/EIPs/issues/20
        // 满足下面所有条件的合约都是 ERC20 合约：
        // 定义统⼀的函数名：名称、发⾏量、转账函数、转账事件等

        // 示例
        interface IERC20 {
            function name() external view returns (string memory);
            function symbol() external view returns (string memory);
            function decimals() external view returns (uint8); // ⼩数位数
            function totalSupply() external view returns (uint256);
            function balanceOf(address account) external view returns (uint256);
            
            function transfer(address to, uint256 amount) external returns (bool);
            function allowance(address owner, address spender) external view returns (uint256);
            function approve(address spender, uint256 amount) external returns (bool);
            function transferFrom(address from, address to, uint256 amount) external returns (bool);
            event Transfer(address indexed from, address indexed to, uint256 value);
            event Approval(address indexed owner, address indexed spender, uint256 value);
        }
        // 社区版本的实际实现
        import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
        contract MyERC20 is ERC20 {
        constructor() ERC20(“OpenSpace BootCamp”, "CAMP") {
            _mint(msg.sender, 10000*10**18);
            // 18 是以太币的最大⼩数位数
            // uint 小数点的表示 0.1 = 0.1*10^18
            }
        }
    }
}