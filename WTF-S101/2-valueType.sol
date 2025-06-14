// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;
contract ValueType2{
    // 1、布尔值
    bool public _bool = true;
    // 布尔运算
    bool public _bool1 = !_bool; // 取非
    bool public _bool2 = _bool && _bool1; // 与
    bool public _bool3 = _bool || _bool1; // 或
    bool public _bool4 = _bool == _bool1; // 相等
    bool public _bool5 = _bool != _bool1; // 不相等


    // 2、整型
    int public _int = -1; // 整数，包括负数
    uint public _uint = 1; // 无符号整数
    uint256 public _number = 20220330; // 256位无符号整数
    // 整数运算
    uint256 public _number1 = _number + 1; // +，-，*，/
    uint256 public _number2 = 2**2; // 指数
    uint256 public _number3 = 7 % 2; // 取余数
    bool public _numberbool = _number2 > _number3; // 比大小

    // 3、地址
    address public _address = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public _address1 = payable(_address); // payable address，可以转账、查余额
    // 地址类型的成员
    uint256 public balance = _address1.balance; // balance of address

    // 4、固定长度的字节数组
    bytes32 public _byte32 = "MiniSolidity"; 
    bytes1 public _byte = _byte32[0]; 

    // 5、用enum将uint 0， 1， 2表示为Buy, Hold, Sell
    enum ActionSet { Buy, Hold, Sell }
    // 创建enum变量 action
    ActionSet action1 = ActionSet.Buy;
    uint256 public action1_number = uint(action);

    ActionSet action = ActionSet.Sell;

    // enum可以和uint显式的转换
    function enumToUint() external view returns(uint){
        return uint(action);
    }


}
