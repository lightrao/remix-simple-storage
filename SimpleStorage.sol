// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // Specifies the Solidity compiler version as 0.8.18. This is important for ensuring compatibility and security of the contract.

contract SimpleStorage {
    // State variable to store a number.
    uint256 myFavoriteNumber;

    // Defines a custom data structure called 'Person'.
    struct Person {
        uint256 favoriteNumber; // An attribute to store the person's favorite number.
        string name; // An attribute to store the person's name.
    }

    // A dynamic array of 'Person' structs. It's public, so Solidity automatically creates a getter function for it.
    Person[] public listOfPeople;

    // A mapping to associate a string (name) with a uint256 (favorite number).
    // It's public, so Solidity automatically creates a getter function for this mapping.
    mapping(string => uint256) public nameToFavoriteNumber;

    // A function to update the value of 'myFavoriteNumber'.
    // '_favoriteNumber' is the new value to be set.
    function storeMyFavoriteNumber(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber; // Updates the state variable 'myFavoriteNumber'.
    }

    // A function to retrieve the value of 'myFavoriteNumber'.
    // Marked as 'view' because it doesn't modify the contract's state.
    // Returns a uint256, the current value of 'myFavoriteNumber'.
    function retrieveMyFavoriteNumber() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // A function to add a new 'Person' to 'listOfPeople' and update 'nameToFavoriteNumber' mapping.
    // '_name' and '_favoriteNumber' are the attributes for the new 'Person'.
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Creates a new 'Person' struct in memory.
        Person memory newPerson = Person({
            favoriteNumber: _favoriteNumber,
            name: _name
        });
        listOfPeople.push(newPerson); // Adds the new 'Person' to the 'listOfPeople' array.
        nameToFavoriteNumber[_name] = _favoriteNumber; // Updates the mapping with the new person's name and favorite number.
    }
}
