//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

interface IBatchRegistry {
    function checkIn() external;
}

contract CheckIn is Ownable {
    address private _batchRegistry;

    constructor(address batchRegistry) Ownable() {
        _batchRegistry = batchRegistry;
    }

    function checkIn() external onlyOwner {
        IBatchRegistry(_batchRegistry).checkIn();
    }
}
