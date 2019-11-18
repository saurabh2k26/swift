class Player{
    var name : String
    var style : String
    var team : String?    // ? denotes that this is optional ie can be empty
    
    init(name: String, style:String){
        print("new player object created")
        self.name = name
        self.style = style
    }
    
    func batting_style(){
        print(self.style)
    }
    
    func get_name(){
        print(self.name)
    }
}

class IPL : Player {        // inheritence
    
    override func batting_style() {    //oveririding functions
        super.get_name()               // using parent function using super
        print("IPL player can play any style")
    }
}


let ply2 = IPL(name:"rohit sharma", style:"right handed batsman")
ply2.batting_style()
ply2.team = "mumbai indians"
print(ply2.team)     // this would print Optional("mumbai indians")
print(ply2.team!)    // we need ! mark to unpack optional variables
