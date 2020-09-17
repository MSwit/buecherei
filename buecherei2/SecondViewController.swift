//
//  SecondViewController.swift
//  buecherei2
//
//  Created by Maik Switalski on 17.09.20.
//  Copyright © 2020 Maik Switalski. All rights reserved.
//

import Cocoa
import SwiftyJSON

class SecondViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func abbrechenGeklickt(_ sender: Any) {
        self.dismiss(self)
    }
    @IBAction func speichern(_ sender: Any) {
        print("[+] speichern wurde geklickt")
        let levels = ["unlocked", "locked", "locked"]
        let json = JSON(levels)
        let str = json.description
//        let data = str.dataUsingEncoding(NSUTF8StringEncoding)!
        let data = str.data(using: String.Encoding.utf8)!
        if let file = FileHandle(forWritingAtPath:"test.json") {
            file.write(data)
        }     }
}
