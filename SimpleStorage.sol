// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson = Person({
            favoriteNumber: _favoriteNumber,
            name: _name
        });
        listOfPeople.push(newPerson);
    }
}
