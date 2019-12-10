// find all buttons
let app = XCUIApplication()
let allButtons = app.descendants(matching: .button)
        for i in 0...allButtons.count-1 {
            print(allButtons.element(boundBy: i).label)
        }

// find all buttons - direct
let app = XCUIApplication()
let allButtons = app.buttons
        for i in 0...allButtons.count-1 {
            print(allButtons.element(boundBy: i).label)
        }
