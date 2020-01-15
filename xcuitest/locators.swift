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
// specific button
XCUIApplication().buttons["grid1"].tap // where grid1 is identifier. get it from po XCUIApplication().buttons

//different types of locators
app.alerts.element
app.buttons.element
app.collectionViews.element
app.images.element
app.maps.element
app.navigationBars.element
app.pickers.element
app.progressIndicators.element
app.scrollViews.element
app.segmentedControls.element
app.staticTexts.element
app.switches.element
app.tabBars.element
app.tables.element
app.textFields.element
app.textViews.element
app.webViews.element

// all buttons inside a specific scroll view (direct subviews only)
app.scrollViews["Main"].children(matching: .button)

// all buttons anywhere inside a specific scroll view (subviews, sub-subviews, sub-sub-subviews, etc)
app.scrollViews["Main"].descendants(matching: .button)    

// find the first and fourth buttons
app.buttons.element(boundBy: 0)
app.buttons.element(boundBy: 3)

// find the first button
app.buttons.firstMatch
