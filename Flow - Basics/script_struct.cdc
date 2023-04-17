import MyContract from 0x<contract-address>

transaction {
    prepare(acct: AuthAccount) {
        // Call the addStructToArray function on the contract
        acct.contracts.getMyContract().addStructToArray(var1: "hello", var2: 123)
    }
}

script {
    // Call the getStructFromArray function on the contract
    let myStruct = getAccount(0x<account-address>).getMyContract().getStructFromArray(index: 0)
    log(myStruct.var1)
    log(myStruct.var2)
}
