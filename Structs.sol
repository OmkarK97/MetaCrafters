// SPDX-License-Identifier: SEE LICENSE IN LICENSE

pragma solidity >=0.8.2 <0.9.0;

contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping (address => Car[]) public carsByOwner;

    function examples() external {
        // Storing car data
        Car memory toyota = Car("Toyota", 2000, msg.sender);
        Car memory lambo = Car("Lambo", 2015, msg.sender);
        Car memory tata = Car({year: 2020, model: "TATA_NEXON", owner: msg.sender});
        Car memory tesla; 
        tesla.model = "tesla";
        tesla.year = 2022;
        tesla.owner = msg.sender; 

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
        cars.push(tata);

        // Using storage to manipulate with data

        Car storage _car = cars[0];
        _car.year = 1999;

        // this delete's the data
        delete _car.owner;
        delete cars[1];
    }

}