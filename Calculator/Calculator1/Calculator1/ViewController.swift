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
    @IBAction func key_2(sender: AnyObject) {
    //Result.text = "2"
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
    @IBAction func key_3(sender: AnyObject) {
    //Result.text = "3"
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
    @IBAction func key_4(sender: AnyObject) {
    //Result.text = "4"
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
    @IBAction func key_5(sender: AnyObject) {
    //Result.text = "5"
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
    @IBAction func key_6(sender: AnyObject) {
    //Result.text = "6"
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
    @IBAction func key_7(sender: AnyObject) {
    //Result.text = "7"
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
    @IBAction func key_8(sender: AnyObject) {
    //Result.text = "8"
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
    @IBAction func key_9(sender: AnyObject) {
    //Result.text = "9"
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
    @IBAction func key_0(sender: AnyObject) {
    //Result.text = "0"
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
    @IBAction func Equal(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

