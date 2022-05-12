// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract Lottery {
    address public manager;
    address payable[] public players;
    address public lastWinner;

    constructor() {
        manager = msg.sender;
    }

    function enter() public payable {
        require(msg.value > .01 ether);
        players.push(payable(msg.sender));
    }

    function getPlayers() public view returns (address payable[] memory) {
        return players;
    }

    function pickWinner() public restricted {        
        // pick winner index
        uint index = random() % players.length;
        // set winner
        lastWinner = players[index];
        // transfer all contract amount to winner
        players[index].transfer(address(this).balance);
        // reset the players
        players = new address payable[](0);
    }

    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }

    modifier restricted() {
        // sender needs to be manager to run this code
        require(msg.sender == manager);
        _;
    }
}
