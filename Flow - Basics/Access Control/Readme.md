# ADS
ADS is a decentralized application (dApp) that allows users to add and manage identities that are associated with lucky numbers and favorite fruits. This codebase contains the contracts and transactions that define the ADS dApp in Cadence, the programming language used in the Flow blockchain.

# Getting Started
To use ADS, you need to have access to a Flow blockchain node or emulator, and an account that can deploy and interact with Cadence contracts and transactions. You can use the Flow CLI or a web-based wallet like Blocto or Dapper to manage your Flow account.

Once you have set up your environment, you can deploy the ADS contract to the blockchain by running:

```bash
Copy code
flow project deploy
```
This will compile and deploy the ADS.cdc contract to the default Flow network. You can customize the deployment configuration in the flow.json file.

After deploying the contract, you can interact with the ADS dApp by executing the transactions defined in the Transaction.cdc, Add Identity.cdc, and ChangeFruit.cdc files, using the Flow CLI or a wallet interface.

For example, to add a new identity to ADS, you can run:

```bash
Copy code
flow transactions send ./transactions/Add\ Identity.cdc \
  --arg name:string=John \
  --arg luckyNumber:int=42 \
  --arg favoriteFruit:string=apple \
  --signer <your-account-address>
```
This will create and sign a transaction that invokes the addIdentity function of the ADS contract with the specified arguments.

Similarly, to change the favorite fruit of an existing identity, you can run:

```bash
Copy code
flow transactions send ./transactions/ChangeFruit.cdc \
  --arg name:string=John \
  --arg favoriteFruit:string=banana \
  --signer <your-account-address>
```
This will create and sign a transaction that invokes the changeFavoriteFruit function of the Identity struct associated with the John name in the identities map of the ADS contract.

Finally, to read the list of all identities stored in ADS, you can run:

```bash
Copy code
flow scripts execute ./scripts/Read\ Identity.cdc
```
This will execute the main function of the Read Identity.cdc script and print the result in the console.

# Code Structure
The ADS dApp consists of three Cadence files:

ADS.cdc: The main contract that defines the ADS resource, which contains the allNames array and the identities map of Identity structs. The ADS contract also defines the addName and addIdentity functions for adding new names and identities, as well as the Identity struct and its changeFavoriteFruit function for changing the favorite fruit of an identity.

Transaction.cdc: A transaction that invokes the addName function of the ADS contract with a single name argument.

Add Identity.cdc: A transaction that invokes the addIdentity function of the ADS contract with three arguments: name, luckyNumber, and favoriteFruit.

ChangeFruit.cdc: A transaction that invokes the changeFavoriteFruit function of the Identity struct associated with a given name in the identities map of the ADS contract, with a single favoriteFruit argument.

Read Identity.cdc: A script that returns the entire identities map of the ADS contract, as a dictionary of String keys and Identity values.

# How it Works
The ADS dApp uses a simple data model to store and manage identities. Each identity is represented by a String name, an Int lucky number, and a String favorite fruit. The ADS contract stores all the names in an array, and all the identities in a map that associates each name with its corresponding Identity struct.

To add a new name to the allNames array, the Transaction.cdc transaction calls the addName function of the ADS contract with a single name argument. This function appends the new name to the allNames array, without modifying the identities map.

To add a new identity to the identities map, the Add Identity.cdc transaction calls the addIdentity function of the ADS contract with three arguments: name, luckyNumber, and favoriteFruit. This function first checks that the name argument is already in the allNames array, using a pre condition. If the name is valid, the function creates a new Identity struct with the specified luckyNumber and favoriteFruit values, and adds it to the identities map under the given name key.

To change the favorite fruit of an existing identity, the ChangeFruit.cdc transaction calls the changeFavoriteFruit function of the Identity struct associated with a given name in the identities map of the ADS contract, with a single favoriteFruit argument. This function updates the favoriteFruit field of the corresponding Identity struct.

To read the list of all identities stored in ADS, the Read Identity.cdc script calls the main function of the ADS contract, which returns the entire identities map as a dictionary of String keys and Identity values. The script prints this dictionary to the console, which shows all the names, lucky numbers, and favorite fruits stored in the ADS contract.

# Conclusion
The ADS dApp is a simple but practical example of a decentralized application that uses the Flow blockchain and Cadence programming language. By managing identities in a decentralized and trustless way, ADS demonstrates the potential of blockchain technology for building secure and transparent