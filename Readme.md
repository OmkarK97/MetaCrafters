# MyContract

MyContract is a smart contract written in Cadence for the Flow blockchain. It includes a custom struct and methods to add and retrieve instances of that struct from an array and a dictionary.

# Purpose

The purpose of MyContract is to provide a simple example of how to define a custom struct in Cadence and interact with it using methods on a smart contract. By creating an array and a dictionary of MyStructs and implementing methods to add and retrieve them, developers can learn how to store and manage data on the Flow blockchain.

# Functionality

MyContract includes the following functionality:

A custom struct called MyStruct with two fields: var1 (String) and var2 (Int)
An array of MyStructs called myArray
A dictionary of MyStructs called myDict
A method called addStructToArray that adds a new MyStruct to myArray
A method called addStructToDict that adds a new MyStruct to myDict
A method called getStructFromArray that retrieves a MyStruct from myArray by index
A method called getStructFromDict that retrieves a MyStruct from myDict by key
Developers can deploy the MyContract smart contract to a Flow emulator or testnet and interact with it using a client like flow-cli. The contract can be used as a starting point for building more complex smart contracts that require data storage and management.

# Installation

To deploy and interact with MyContract, you will need:

A Flow account and wallet
The Flow CLI installed on your local machine
Clone the MyContract repository to your local machine:

# bash

Copy code
git clone https://github.com/your-github-username/my-contract.git
Deploy the contract to a Flow emulator or testnet:

# css

Copy code
flow project deploy --network emulator
Run the example script to add a MyStruct to the array and retrieve it by index:

# Contributing

If you would like to contribute to MyContract, feel free to fork the repository and submit a pull request.