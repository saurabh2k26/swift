class Player{
    var name : String
    var style : String
    var team = "India"
    
    init(name: String, style:String){
        print("new player object created")
        self.name = name
        self.style = style
    }
 
    // custom init method
    convenience init(name: String, style:String, team: String){
        self.init(name: name, style: style)
        self.team = team
    }
    
}

var ply1 = Player(name: "Rohit Sharma", style: "Right handed batsmen")
print(ply1.team)
var ply2 = Player(name: "Bret Lee", style: "Right handed batsmen", team: "Australia")
print(ply2.name)
print(ply2.team)
