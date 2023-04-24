# CryptoPoops
CryptoPoops is a smart contract written in Cadence language that allows users to create and manage Non-Fungible Tokens (NFTs). It extends the 0x02 NonFungibleToken library and provides additional functionality to create, deposit, and withdraw NFTs.

# Features
Create NFTs with unique names, favorite food, and lucky numbers
Deposit NFTs to a Collection
Withdraw NFTs from a Collection
Get the list of IDs of all owned NFTs in the Collection
Borrow an NFT from the Collection by its ID
Borrow an authorized NFT from the Collection by its ID

# Usage
The CryptoPoops smart contract can be used to create and manage NFTs. You can create an empty Collection using the createEmptyCollection() function, and link it to a public capability using link<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic, CryptoPoops.MyCollectionPublic}>(/public/Collection, target: /storage/Collection).

Once you have a Collection, you can deposit NFTs into it using the deposit() function. To withdraw an NFT, use the withdraw() function by providing the ID of the NFT you want to withdraw. You can also get the list of IDs of all owned NFTs in the Collection using the getIDs() function.

To create a new NFT, you can use the createNFT() function in the Minter resource. This function takes in the name, favorite food, and lucky number of the NFT you want to create, and returns the newly minted NFT.

To interact with the smart contract, you can use the provided transactions. The first transaction transaction() creates an empty Collection and links it to a public capability. The second transaction transaction(recipient: Address) allows you to mint a new NFT and store it in the specified recipient's Collection.

# Prerequisites
To use CryptoPoops, you'll need to have a compatible environment set up with the Cadence programming language installed. Additionally, you'll need to have access to the 0x01 and 0x02 libraries.

# License
This code is released under the MIT License. See LICENSE file for more information.