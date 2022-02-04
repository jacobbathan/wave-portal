// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint totalUpWaves;
    uint totalDownWaves;

    constructor() {
        console.log('Yo yo, I am a contract and I am smart');
    }
    
    function upWave() public {
        totalUpWaves += 1;
        console.log("%s has uped!", msg.sender);
    }

    function downWave() public {
        totalDownWaves += 1;
        console.log("%s has downed :(", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total!", totalUpWaves + totalDownWaves);
        return totalUpWaves + totalDownWaves;
    }
}
