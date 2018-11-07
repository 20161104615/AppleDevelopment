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
    var Result = Double()
    var logo = String()
    var s = String()//结果String类型
    var PointCount = 0
    var CountAdd = 0
    var CountMinus = 0
    var CountRide = 0
    var CountExcept = 0
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var Display2: UILabel!
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
    @IBAction func point(_ sender: UIButton) {
        PointCount += 1
        let digit = sender.currentTitle
        let textCurrent = display.text!
        if (PointCount <= 1){
            display.text = textCurrent + digit!
            FirstTime = true
        }
    }
    @IBAction func add(_ sender: UIButton) {
        PointCount = 0
        if (CountAdd == 0){
            n1 = Double(display.text!)!
            display.text = ""
            Display2.text = String(n1)//显示到Display2中
            logo = "+"
            CountAdd += 1
        }
        else{
            let d2 = Display2.text
            n1 += Double(display.text!)!
            Display2.text = d2! + "+" + String(Double(display.text!)!)
            display.text = ""
            logo = "+"
            CountAdd += 1
        }
    }
    @IBAction func minus(_ sender: UIButton) {
        PointCount = 0
        if (CountMinus == 0){
            n1 = Double(display.text!)!
            display.text = ""
            Display2.text = String(n1)
            logo = "-"
            CountMinus += 1
        }
        else{
            let d2 = Display2.text
            n1 -= Double(display.text!)!
            Display2.text = d2! + "-" + String(Double(display.text!)!)
            display.text = ""
            logo = "-"
            CountMinus += 1
        }
    }
    @IBAction func ride(_ sender: UIButton) {
        PointCount = 0
        if (CountRide == 0){
            n1 = Double(display.text!)!
            display.text = ""
            Display2.text = String(n1)
            logo = "*"
            CountRide += 1
        }
        else{
            let d2 = Display2.text
            n1 *= Double(display.text!)!
            Display2.text = d2! + "✖️" + String(Double(display.text!)!)
            display.text = ""
            logo = "*"
            CountRide += 1
        }
    }
    @IBAction func except(_ sender: UIButton) {
        PointCount = 0
        if (CountExcept == 0){
            n1 = Double(display.text!)!
            display.text = ""
            Display2.text = String(n1)
            logo = "/"
            CountExcept += 1
        }
        else{
            let d2 = Display2.text
            n1 /= Double(display.text!)!
            Display2.text = d2! + "➗" + String(Double(display.text!)!)
            display.text = ""
            logo = "/"
            CountExcept += 1
        }
    }
    @IBAction func Calculator(_ sender: UIButton) {
        let d2 = Display2.text
        PointCount = 0
        n2 = Double(display.text!)!
        switch logo {
        case "+":
            Result = n1 + n2
            s = String(Result)
            while (s.last == "0") {
                s.removeLast()//删除最后一位
            }
            if (s.last == "."){
                s.removeLast()
            }
            display.text = ""
            Display2.text = d2! + "+" + String(n2) + "=" + s
            if (s == "0"){
                FirstTime = false
            }
        case "-":
            Result = n1 - n2
            s = String(Result)
            while (s.last == "0") {
                s.removeLast()//删除最后一位
            }
            if (s.last == "."){
                s.removeLast()
            }
            display.text = ""
            Display2.text = d2! + "-" + String(n2) + "=" + s
            if (s == "0"){
                FirstTime = false
            }
        case "*":
            Result = n1 * n2
            s = String(Result)
            while (s.last == "0") {
                s.removeLast()//删除最后一位
            }
            if (s.last == "."){
                s.removeLast()
            }
            display.text = ""
            Display2.text = d2! + "✖️" + String(n2) + "=" + s
            if (s == "0"){
                FirstTime = false
            }
        case "/":
            Result = n1 / n2
            s = String(Result)
            while (s.last == "0") {
                s.removeLast()//删除最后一位
            }
            if (s.last == "."){
                s.removeLast()
            }
            display.text = ""
            Display2.text = d2! + "➗" + String(n2) + "=" + s
            if (s == "0"){
                FirstTime = false
            }
        default:
            break
        }
        CountAdd = 0
        CountMinus = 0
        CountRide = 0
        CountExcept = 0
        PointCount = 0
    }
    @IBAction func clear(_ sender: UIButton) {
        n1 = 0
        n2 = 0
        logo = ""
        CountAdd = 0
        CountMinus = 0
        CountRide = 0
        CountExcept = 0
        PointCount = 0
        display.text = "0"
        FirstTime = false
        Display2.text = ""
    }
    @IBAction func square(_ sender: UIButton) {
        n1 = Double(display.text!)!
        if let digit = sender.currentTitle{
            switch digit{
            case "π":
                display.text = String(Double.pi * n1)
            case "√":
                display.text = String(sqrt(n1))
            case "X²":
                display.text = String(n1 * n1)
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

