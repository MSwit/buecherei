//
//  SecondViewController.swift
//  buecherei2
//
//  Created by Maik Switalski on 17.09.20.
//  Copyright © 2020 Maik Switalski. All rights reserved.
//

import Cocoa

class SecondViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func abbrechenGeklickt(_ sender: Any) {
        self.dismiss(self)
    }
}
