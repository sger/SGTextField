//
//  ViewController.swift
//  SGTextField
//
//  Created by Spiros Gerokostas on 10/21/2015.
//  Copyright (c) 2015 Spiros Gerokostas. All rights reserved.
//

import UIKit
import SGTextField

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let textField = SGTextField(frame: CGRectMake(0.0, 100.0, 300.0, 50.0))
        textField.backgroundColor = UIColor.grayColor()
        textField.textEdgeInsets = UIEdgeInsetsMake(5.0, 20.0, 5.0, 5.0)
        textField.text = "Hello World"
        self.view.addSubview(textField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

