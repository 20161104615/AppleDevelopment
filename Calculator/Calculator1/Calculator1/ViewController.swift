//
//  ViewController.swift
//  Calculator1
//
//  Created by 20161104615 on 2018/9/26.
//  Copyright © 2018年 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Sum = Int()
    
    
    @IBOutlet weak var Result: UILabel!
    var DisplayWindowAcknowledgement = false//表示是否是第一次输入数字

    @IBAction func key_1(sender : AnyObject) {
        let key = sender.currentTitle
        if (DisplayWindowAcknowledgement){
            Result.text = Result.text! + key!!
        } else{
            Result.text = key!
            if (key != "0"){
                DisplayWindowAcknowledgement = true
            }
        }
        
    }
    @IBAction func key_2(_ sender: Any) {
    //Result.text = "2"
    }
    @IBAction func key_3(_ sender: Any) {
    //Result.text = "3"
    }
    @IBAction func key_4(_ sender: Any) {
    //Result.text = "4"
    }
    @IBAction func key_5(_ sender: Any) {
    //Result.text = "5"
    }
    @IBAction func key_6(_ sender: Any) {
    //Result.text = "6"
    }
    @IBAction func key_7(_ sender: Any) {
    //Result.text = "7"
    }
    @IBAction func key_8(_ sender: Any) {
    //Result.text = "8"
    }
    @IBAction func key_9(_ sender: Any) {
    //Result.text = "9"
    }
    @IBAction func key_0(_ sender: Any) {
    //Result.text = "0"
    }
    
    
    @IBAction func Equal(_ sender: Any) {
        switch <#value#> {
        case <#pattern#>:
            <#code#>
        default:
            <#code#>
        }
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

