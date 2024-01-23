// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    uint256 favoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function retrieve2() public pure returns (uint) {
        return 7;
    }
}
