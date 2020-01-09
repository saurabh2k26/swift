import Foundation
import XCTest

var app = XCUIApplication()

enum MyLocators: String {
    
    case clickmebuttonButton = "clickMeButton"  // button name mapping to accessibility identifier
    case clickmebuttonButton2 = "clickMeButton2"
    
    var element: XCUIElement {
        switch self {
        case .clickmebuttonButton, .clickmebuttonButton2:   // all buttons have button actions
            return app.buttons[self.rawValue]
        }
    }

}

class TapTheHighestBase: XCTestCase {
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    
    func increment() {
        MyLocators.clickmebuttonButton.element.tap()
    }
    
    func decrement() {
        MyLocators.clickmebuttonButton2.element.tap()
    }
    
}
