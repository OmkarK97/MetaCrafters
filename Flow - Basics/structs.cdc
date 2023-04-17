pub contract MyContract {
    // Define a custom struct
    pub struct MyStruct {
        pub var1: String
        pub var2: Int
    }

    // Declare an array of MyStructs
    pub var myArray: [MyStruct]

    // Declare a dictionary of MyStructs
    pub var myDict: {String: MyStruct}

    // Function to add a MyStruct to the array
    pub fun addStructToArray(var1: String, var2: Int) {
        let newStruct = MyStruct(var1: var1, var2: var2)
        self.myArray.append(newStruct)
    }

    // Function to add a MyStruct to the dictionary
    pub fun addStructToDict(key: String, var1: String, var2: Int) {
        let newStruct = MyStruct(var1: var1, var2: var2)
        self.myDict[key] = newStruct
    }

    // Function to get a MyStruct from the array by index
    pub fun getStructFromArray(index: Int): MyStruct {
        return self.myArray[index]
    }

    // Function to get a MyStruct from the dictionary by key
    pub fun getStructFromDict(key: String): MyStruct? {
        return self.myDict[key]
    }
}
