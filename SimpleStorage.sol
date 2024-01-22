// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88;
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = 88;
    address myAddress = 0x3395898EEE003c9D93e4B4e7E8aF4E141A3C4885;
    bytes32 favoriteBytes32 = "cats"; // bytes and bytes32 are diffrent
}
