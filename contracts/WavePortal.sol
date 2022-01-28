// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint totalUps;
    uint totalDowns;

    constructor() {
        console.log('Yo yo, I am a contract and I am smart');
    }
    
    function wave() public {
        totalWaves += 1;
        console.log("%s have waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
