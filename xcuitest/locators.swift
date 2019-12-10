// find all buttons
let app = XCUIApplication()
let allButtons = app.descendants(matching: .button)
        for i in 0...allButtons.count-1 {
            print(allButtons.element(boundBy: i).label)
        }
