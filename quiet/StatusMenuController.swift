//
//  StatusMenuController.swift
//  quiet
//
//  Created by Ellen Li on 2016-12-08.
//  Copyright © 2016 Ellen Li. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.system().statusItem(withLength:NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        // Insert code here to initialize your application
        statusItem.menu = statusMenu
        
        // statusItem.title = "Quiet"
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // force black
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
}
