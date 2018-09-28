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
    @IBAction func key(sender : AnyObject) {
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

