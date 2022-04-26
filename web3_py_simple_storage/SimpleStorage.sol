// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

// FIRST SMART CONTRACT
contract SimpleStorage {
    // this will get initialized to 0
    uint256 favoriteNumber;
    bool favoriteBool;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // create array to add list of people
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    // functions
    // public allows for visibility of var
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view: read off the blockchain blue button
    // pure: doing a type of math blue button
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
