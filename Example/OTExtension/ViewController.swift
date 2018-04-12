//
//  ViewController.swift
//  OTExtension
//
//  Created by sanlazy on 04/09/2018.
//  Copyright (c) 2018 sanlazy. All rights reserved.
//

import UIKit
import OTExtension
import OTMacro

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UserDefaults.standard.set("OTHans", forKey: kCurrentLanguage)
        UserDefaults.standard.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(Bundle.localizedString(text: "mobile_length_too_short"))
    }
}

