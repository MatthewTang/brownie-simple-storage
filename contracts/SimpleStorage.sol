// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {
    // this will init to 0 , public keyword also have a view function uint is unsigned integer
    uint256 favNumber;

    function store(uint256 _favNumber) public returns (uint256) {
        favNumber = _favNumber;
        return _favNumber;
    }

    // view, pure
    function retrieve() public view returns (uint256) {
        return favNumber;
    }

    struct People {
        uint256 favNumber;
        string name;
    }

    // array
    People[] public people;

    //mapping
    mapping(string => uint256) public nameToFavNumber;

    // memory vs storage
    function addPerson(string memory _name, uint256 _favNumber) public {
        //people.push(People(_favNumber, _name));
        people.push(People({favNumber: _favNumber, name: _name}));
        nameToFavNumber[_name] = _favNumber;
    }
}
