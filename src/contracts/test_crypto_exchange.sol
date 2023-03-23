// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.5.0;

// importing the token for reference
import "./test_coin.sol";

contract test_crypto_exchange {
    string public name = "test_crypto_exchange";
    test_coin public coin;
    // uint is a integer in solidity and we are declaring a fixed rate for the exchange of our solidity for now we are hard coding the value
    uint public rate = 100;
    // a constructor will run after every call on this contract and the "_" is just for naming convention
    constructor(test_coin _coin) public {
        coin = _coin;
    }
    function buytoken() public payable{
        //calculate the number of tokens
        uint tokenAmount = msg.value * rate;
        // we use the transfer function on the coin contract to the request senders address
        token.transfer(msg.sender,tokenAmount);
    }
}