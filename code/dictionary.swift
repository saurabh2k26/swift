var d = ["name": "Michael", "state": "OR"]
print(d["name"]!)
for (k,v) in d{
    print(k,v)
}

var flightMapping = [String:String]()    //blank dictionary
flightMapping["IN-2343"] = "Indigo delhi to mumbai"  // adding item to dictionary
flightMapping["IN-2344"] = "Indigo mumbai to delhi"
flightMapping["IN-2344"] = nil // removing a key from dictionary
