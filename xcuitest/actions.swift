//source: https://www.hackingwithswift.com/articles/148/xcode-ui-testing-cheat-sheet

XCTest gives us five different ways to trigger taps on elements:

    tap() triggers a standard tap, which will trigger buttons or active text fields for editing.
    doubleTap() taps twice in quick succession.
    twoFingerTap() uses two fingers to tap once on an element.
    tap(withNumberOfTaps:numberOfTouches:) lets you control tap and touch count at the same time.
    press(forDuration:) triggers long presses over a set number of seconds.

There are also specific methods for gesture control:

    swipeLeft(), swipeRight(), swipeUp(), and swipeDown() execute single swipes in a specific direction, although there is no control over speed or distance.
    pinch(withScale:velocity:) pinches and zooms on something like a map. Specify scales between 0 and 1 to zoom out, or scales greater than 1 to zoom in. Velocity is specified as “scale factor per second” and causes a little overscroll after you zoom – use 0 to make the zoom precise.
    rotate(_: withVelocity:) rotates around an element. The first parameter is a CGFloat specifying an angle in radians, and the second is radians per second.

There are two more element-specific methods you’ll want to use:

    For pickers, use adjust(toPickerWheelValue: 1) to make a picker scroll through to select a particular value.
    For sliders, use adjust(toNormalizedSliderPosition: 0.5) to move it to a specific position
    
    
//typing
app.keys["t"].tap()
app.textFields.element.typeText("test") 

//screenshot
let screenshot = app.screenshot()
let attachment = XCTAttachment(screenshot: screenshot)
attachment.name = "My Great Screenshot"
attachment.lifetime = .keepAlways
add(attachment)
