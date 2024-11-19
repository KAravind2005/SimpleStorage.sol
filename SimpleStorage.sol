// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {

    uint256 myFavoriteNumber;
    // uint256[] listOfFavoriteNumber;

        struct Person {
            uint256 favoriteNumber;  // indexed by the listOfPeople array of people, then accessed using myIndex
            string name;              // named and indexed by their positions in the listOfPeople array
        }


        Person[] public listOfPeople ;

        // mapping(string => uint256) public nameToFavoriteNumber;
        mapping(string=>uint256)  public nameToFavoriteNumber;

        // Person public pat = Person({favoriteNumber:4, name : "Aravind"});

        function store(uint256 _favoriteNumber) public {
            myFavoriteNumber = _favoriteNumber ;
        }

        function retrieve() public view returns (uint256) {
            return myFavoriteNumber;

        }


        function addPerson(string memory _name, uint256 _favoriteNumber) public {
            listOfPeople.push(Person(_favoriteNumber,_name));
            nameToFavoriteNumber[_name] = _favoriteNumber;
        }

































}