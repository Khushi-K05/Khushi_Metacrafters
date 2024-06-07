//SPDX-License-Identifier:MIT
pragma solidity 0.8.26;
contract Challenge_1{
    uint a;
    string my_name;
    address b;
    bool check;

    function getuint(uint _a) public {
        a = _a;
    }
    function setuint() public view  returns(uint){
        return a;
    }

    function getString(string memory _name) public {
        my_name = _name;
    }
    function setString() public view returns (string memory){
        return my_name;
    }


    function getAddress(address _address) public {
        b= _address;
    }
    function setAddress() public view returns (address){
        return b;
    }

    
    function getBoolean(bool _check) public {
        check = _check;
    }
    function setBoolean() public view returns (bool){
        return check;
    }
    

}
