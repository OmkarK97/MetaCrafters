import ADS from 0x<contract-address>

transaction (name : String, luckyNumber : Int, favoriteFruit: String) {

  prepare(acct: AuthAccount) {}

  execute {
    ADS.addIdentity(name: name, luckyNumber: luckyNumber, favoriteFruit: favoriteFruit)
  }
}
