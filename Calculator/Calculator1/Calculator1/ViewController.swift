//
//  ViewController.swift
//  Calculator1
//
//  Created by 20161104615 on 2018/9/26.
//  Copyright © 2018年 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Result: UITextField!
    @IBOutlet weak var key_1: UIButton!
    @IBOutlet weak var key_2: UIButton!

    @IBAction func Equal(_ sender: Any) {
    }
    @IBAction func Add(_ sender: Any) {
       Result.text = "\(Int(key_1.text!) + Int(key_2.text!))"
       
    }
    @IBAction func Minus(_ sender: Any) {
    }
    @IBAction func Ride(_ sender: Any) {
    }
    @IBAction func Except(_ sender: Any) {
    }
    @IBAction func Clear(_ sender: Any) {
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

