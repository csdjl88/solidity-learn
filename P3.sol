pragma solidity ^0.8.10;

contract P3 {
    //合约特殊函数
    // 构造函数(constructor): 初始化逻辑
    // getter 函数: 所有 public 状态变量创建 getter 函数
    // receive 函数: 接收以太币时回调。
    // fallback 函数: 没有匹配函数标识符时, fallback 会被调⽤，如果是转账时，没有 receive 也有调⽤ fallback
    address public owner;
    uint private deposited;
    // 构造函数
    constructor(){
        owner = msg.sender;
    }
    // 定义状态修改器,理解成装饰器即可
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function withdraw() public onlyOwner {
        payable(owner).transfer(deposited);
    }
}
// interface 接口， ⼴泛⽤于合约之间的调⽤• ⽆任何实现的函数。理解成一个工具类接口

interface ICounter {
    function count() external view returns (uint);

    function increment() external;
}

contract Counter is ICounter {
    uint public count;
    // increment 的具体实现
    function increment() external {
        count += 1;
    }
}

contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}

// EVM 错误处理。直接回退最初状态
// assert()和require()⽤来进⾏条件检查，并在条件不满⾜时抛出异常
// revert(“msg”)：终⽌运⾏并撤销状态更
// try/catch: 捕获合约中外部调⽤的异常

// 示例
contract Foo {
    function myFunc(uint x) public pure returns (uint) {
        require(x != 0, "require failed");
        return x + 1;
    }
}

contract trycatch {
    Foo public foo;
    uint public y;
    constructor() {
        foo = new Foo();
    }
    function tryCatchExternalCall(uint _i) public {
        try foo.myFunc(_i) returns (uint result) {
            y = result;
        } catch {
            // dosomething
            revert("error msg");
        }

    }}

// 继承 使⽤关键字 is
// 派⽣合约可以访问基类合约内的所有⾮私有（private）成员，因此内部（internal）函数和状态变量在派⽣合约⾥是可以直接使⽤

// 抽象合约 关键字 abstract ，有具体的实现，不能被部署， 可包含没有实现的纯虚函数• super：调⽤⽗合约函数
//  相对interface，interface没有具体的实现

abstract contract A {
    uint public a;

    function add(uint x) public virtual;
}

contract B is A {
    uint public b;
    constructor() {
        b = 2;
    }
    function add(uint x) public override virtual {
        // super：调⽤⽗合约函数
        // virtual： 表示函数可以被重写
        // overide： 表示重写了⽗合约函数
        b += x;
    }
}
