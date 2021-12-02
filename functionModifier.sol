//SPDX-License-Identifier: MIT
 
pragma solidity >=0.8.4 <0.9.0;


contract DonationBox {

    address public owner; 
    
    constructor (){
        owner = msg.sender;
    }
    
    function getBalance () public view returns (uint){
        return address(this).balance;
    }


    modifier halfETHMinimum (){
        require (msg.value >= 0.5 ether, "minimum 0.5 ether to donate."); 
        _;
    }

    function donate () public payable halfETHMinimum() {
    }

    modifier onlyOwner(){
        require (msg.sender == owner, "You are not the owner of this constract!");
        _;
    }

    function withdraw() public payable onlyOwner(){
        payable(owner).transfer (address(this).balance);
    } 
    
    
}