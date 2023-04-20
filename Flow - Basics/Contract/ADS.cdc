pub contract ADS {
    
    pub var allNames : [String]
    
    pub var identities : {String : Identity}

    pub struct Identity {
        pub let luckyNumber : Int

        pub var favoriteFruit : String
        
        init(_luckyNumber : Int, _favoriteFruit : String) {
            self.luckyNumber = _luckyNumber
            self.favoriteFruit = _favoriteFruit
        } 

        pub fun changeFavoriteFruit(newFruit : String) {
        
            self.favoriteFruit = newFruit
        
        }
    }

    pub fun addName(name : String)  {
        self.allNames.append(name)
    } 

    pub fun addIdentity(name : String, luckyNumber : Int, favoriteFruit : String)  {
        pre {
            self.allNames.contains(name) : "This name is not in allNames"
        }

        self.identities[name] = Identity(_luckyNumber : luckyNumber, _favoriteFruit : favoriteFruit)
    }

    init() {
        
        self.allNames = []

        self.identities = {}
    }
}