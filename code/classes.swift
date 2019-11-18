class Player{
    var name: String
    var style: String
    
    init(name: String, style:String){
        print("new player object created")
        self.name = name
        self.style = style
    }
    
    func batting_style(){
        print(self.style)
    }
}

let ply1 = Player(name:"rohit sharma", style:"right handed batsman")
ply1.batting_style()
ply1.style = "opener"  //updating style
ply1.batting_style()
