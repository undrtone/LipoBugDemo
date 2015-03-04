//
//  InterfaceController.swift
//  LipoBugDemo WatchKit Extension
//

import WatchKit
import Foundation
import Demo


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        // Test framework linked by CocoaPods
        var demo = Demo()
        demo.demo()

    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
