import ADS from 0x<contract-address>

transaction (name : String) {

  prepare(acct: AuthAccount) {}

  execute {
    ADS.addName(name: name)
  }
}
