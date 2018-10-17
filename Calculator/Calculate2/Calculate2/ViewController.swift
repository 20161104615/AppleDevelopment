//
//  ViewController.swift
//  Calculate2
//
//  Created by 20161104615 on 2018/10/10.
//  Copyright © 2018年 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var n1 = Double()
    var n2 = Double()
    var logo = String()
    var count = 0

    @IBOutlet weak var display: UILabel!
    
    var FirstTime = false//判断当前是否为0
    
    @IBAction func key(_ sender: UIButton) {
        let digit = sender.currentTitle
        if FirstTime{
            let textCurrent = display.text!
            display.text = textCurrent + digit!
        } else {
            display.text = digit
            FirstTime = true
        }
    }
    
    @IBAction func add(_ sender: UIButton) {
        if (count >= 0){
            n1 = Double(display.text!)!
            display.text = ""
            logo = "+"
            
        } else{
            n1 = Double(display.text!)!
            display.text = ""
            logo = "+"
            
        }
        
    }
    
    @IBAction func minus(_ sender: UIButton) {
        n1 = Double(display.text!)!
        display.text = ""
        logo = "-"
    }
    
    @IBAction func ride(_ sender: UIButton) {
        n1 = Double(display.text!)!
        display.text = ""
        logo = "*"
    }
    
    @IBAction func except(_ sender: UIButton) {
        n1 = Double(display.text!)!
        display.text = ""
        logo = "/"
    }
    @IBAction func Calculator(_ sender: UIButton) {
        n2 = Double(display.text!)!
        switch logo {
        case "+":
            display.text = String((n1 + n2))
        case "-":
            display.text = String((n1 - n2))
        case "*":
            display.text = String((n1 * n2))
        case "/":
            display.text = String((n1 / n2))
        default:
            break
        }
    }
    
    @IBAction func clear(_ sender: UIButton) {
        n1 = 0
        n2 = 0
        logo = ""
        display.text = ""
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

