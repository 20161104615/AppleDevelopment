//
//  ViewController.swift
//  Calculator1
//
//  Created by 20161104615 on 2018/9/26.
//  Copyright © 2018年 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number1 = Int()
    var number2 = Int()
    
    
    @IBOutlet weak var display: UILabel!
    
    
    
    var DisplayWindowAcknowledgement = false//表示是否是第一次输入数字
    
    
    
    
    
    
    @IBAction func key(_ sender: UIButton) {
        let key = sender.currentTitle
        if DisplayWindowAcknowledgement{
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + key!
        } else {
            display.text = key
            DisplayWindowAcknowledgement = true
        }
        
    }
    @IBAction func Sum(_ sender: UIButton) {
        let s1 = sender.currentTitle
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

