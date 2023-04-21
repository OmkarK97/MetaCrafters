import SomeContract from 0x01

pub fun main() {
    // Import the contract and its functions and variables can be accessed here
    // This is AREA 4

    let contractInstance = getAccount(0x01).getCapability<&SomeContract.SomeContract{SomeContract.SomeContractPublic}>(SomeContract.SomeContractPublicPath).borrow()!

    // Reading variables
    let a = contractInstance.testStruct.a // Can be read from anywhere
    let b = contractInstance.testStruct.b // Can be read from anywhere
    let c = contractInstance.testStruct.c // Can only be read within the contract
    let d = contractInstance.testStruct.d // Can only be read within the struct

    // Modifying variables
    contractInstance.testStruct.a = "new value" // Can be modified from anywhere
    contractInstance.testStruct.b = "new value" // Can be modified only within the contract
    contractInstance.testStruct.c = "new value" // Can be modified only within the contract
    contractInstance.testStruct.d = "new value" // Can be modified only within the struct

    // Calling functions
    contractInstance.publicFunc() // Can be called from anywhere
    contractInstance.contractFunc() // Can only be called within the contract
    contractInstance.privateFunc() // Can only be called within the struct

    // Creating resource
    let resource = contractInstance.createSomeResource() // Can be called from anywhere

    // Calling resource function
    resource.resourceFunc() // Can be called from anywhere

    // Calling questsAreFun function
    contractInstance.questsAreFun() // Can be called from anywhere
}
