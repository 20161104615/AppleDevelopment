//
//  ViewController.swift
//  Calculate2
//
//  Created by 20161104615 on 2018/10/10.
//  Copyright © 2018年 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    
    @IBOutlet weak var display: UILabel!
    var FirstTime = false
    
    @IBAction func key(_ sender: UIButton) {
        let digit = sender.currentTitle
        if FirstTime{
            let digit_Old = display.text!
            display.text = digit_Old + digit!
        } else {
            display.text = digit
            FirstTime = true
        }
    }
    
    
    @IBAction func Calculator(_ sender: UIButton) {
        FirstTime = false
        if let number1 = sender.currentTitle {
            let number2 = String()
            
            switch number1 {
            case "+":
                display.text = number2
            case "-":
                
            default:
                break
            }
            
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

