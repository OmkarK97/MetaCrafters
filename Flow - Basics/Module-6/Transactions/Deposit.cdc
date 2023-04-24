import CryptoPoops from 0x01
import NonFungibleToken from 0x02

transaction(recipient: Address) {
 // the NFTMinter will sign this transaction
  prepare(acct: AuthAccount) {
   let nftMinter =  acct.borrow<&CryptoPoops.Minter>(from: /storage/Minter)!

   let publicReference = getAccount(recipient).getCapability(/public/Collection)
                        .borrow<&CryptoPoops.Collection{NonFungibleToken.CollectionPublic}>()
                         ?? panic("This account does not have a Collection")
  
    publicReference.deposit(token: <- nftMinter.createNFT(name: "Omkar", favouriteFood: "Apple", luckyNumber: 13))
  }
  execute {
    log("Stored newly minted NFT into Collection")
  }
}
 