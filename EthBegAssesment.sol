// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
        string public TokenName = "Carry";
        uint public TotalSupply =0;
        string public TokenAbbrv = "xyz";
   

    mapping(address => uint ) public  balances;

    function mintFunction(address _Address, uint value) external {
        TotalSupply += value;
        balances[_Address] += value;
    }

    function burnFunction(address _Address, uint value) external {
         if(balances[_Address]>=value){
        TotalSupply -= value;
        balances[_Address] -= value;
         }
    }
}
