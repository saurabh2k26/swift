import XCTest

class tapthehighestIndexPageUITests: TapTheHighestBase {
    
    func testBasicModeLayout() {
        
        // using XCTContent for better reporting
        XCTContext.runActivity(named: "incrementing counter for 1st time"){ _ in
        increment() //actual execution step
        }
        
        XCTContext.runActivity(named: "incrementing counter for 2nd time"){ _ in
            increment()
        }
        
        // steps without reporitng
        decrement()
        decrement()
        
        XCTAssert(app.staticTexts["0"].exists)
        
        
    }
    
}
