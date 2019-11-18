class Player{
    var name : String
    var style : String
    
    init(name: String, style:String){
        print("new player object created")
        self.name = name
        self.style = style
    }
    
    func get_last_name() -> String.SubSequence{
        return self.name.split(separator: " ").last!
    }
    
    //computed property - can be used inplace of functions if complexity is o(n) and no chances of errors
    var lastName:String.SubSequence {
       return self.name.split(separator: " ").last!
    }
    
}

var ply1 = Player(name: "Rohit Sharma", style: "Right handed batsmen")
print(ply1.get_last_name())
print(ply1.lastName)
