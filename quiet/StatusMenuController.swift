//
//  StatusMenuController.swift
//  quiet
//
//  Created by Ellen Li on 2016-12-08.
//  Copyright © 2016 Ellen Li. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    
// menu bar
    
    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem = NSStatusBar.system().statusItem(withLength:NSVariableStatusItemLength)
    
    override func awakeFromNib() {
        // app init
        statusItem.menu = statusMenu
        
        // statusItem.title = "Quiet"
        let icon = NSImage(named: "statusIcon")
        icon?.isTemplate = true // force black
        statusItem.image = icon
        statusItem.menu = statusMenu
    }
    
// quiet
    
    @IBAction func nowClicked(_ sender: NSMenuItem) {
        // enable now
    }
    
// calendar settings
    
    @IBAction func connectClicked(_ sender: NSMenuItem) {
        // connect to google
    }
    
    @IBAction func syncClicked(_ sender: NSMenuItem) {
        // sync
    }
    
    @IBAction func logoutClicked(_ sender: NSMenuItem) {
        // logout
    }
    
// quiet app settings
    
    @IBAction func autostartClicked(_ sender: NSMenuItem) {
        // toggle
    }
    
// quit
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared().terminate(self)
    }
    
}
