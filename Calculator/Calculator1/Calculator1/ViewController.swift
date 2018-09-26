//
//  ViewController.swift
//  Calculator1
//
//  Created by 20161104615 on 2018/9/26.
//  Copyright © 2018年 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Num1 = Int()
    var Num2 = Int()
    var Num3 = Int()
    var Num4 = Int()
    var Num5 = Int()
    var Num6 = Int()
    var Num7 = Int()
    var Num8 = Int()
    var Num9 = Int()
    var Num0 = Int()
    var Sum = Int()
    
    @IBOutlet weak var Result: UITextField!
    
    @IBAction func key_1(_ sender: Any) {
        Result.text = "1"
        Num1 = 1
    }
    @IBAction func key_2(_ sender: Any) {
        Result.text = "2"
        Num2 = 2
    }
    @IBAction func key_3(_ sender: Any) {
        Result.text = "3"
        Num3 = 3
    }
    @IBAction func key_4(_ sender: Any) {
        Result.text = "4"
        Num4 = 4
    }
    @IBAction func key_5(_ sender: Any) {
        Result.text = "5"
        Num5 = 5
    }
    @IBAction func key_6(_ sender: Any) {
        Result.text = "6"
        Num6 = 6
    }
    @IBAction func key_7(_ sender: Any) {
        Result.text = "7"
        Num7 = 7
    }
    @IBAction func key_8(_ sender: Any) {
        Result.text = "8"
        Num8 = 8
    }
    @IBAction func key_9(_ sender: Any) {
        Result.text = "9"
        Num9 = 9
    }
    @IBAction func key_0(_ sender: Any) {
        Result.text = "0"
        Num0 = 0
    }
    
    
    @IBAction func Equal(_ sender: Any) {
        Result.text = "\(Sum)"
    }
    @IBAction func Add(_ sender: Any) {
        
        
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

