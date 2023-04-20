import ADS from 0x<contract-address>

transaction (name : String, favoriteFruit: String) {

  prepare(acct: AuthAccount) {}

  execute {
    
    log(ADS.identities[name])
    ADS.identities[name]!.changeFavoriteFruit(newFruit : favoriteFruit)
    log(ADS.identities[name])
  }
}
