//
//  ViewController.swift
//  SimpleBrowser
//
//  Created by 20161104615 on 2018/12/26.
//  Copyright © 2018 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var url: UITextField!
    
    
    
    @IBAction func buttonClick(_ sender: Any) {
        
        var color = 0
        self.webview.loadRequest(NSURLRequest(url: NSURL(string: "http://" + url.text!)! as URL) as URLRequest)
        url!.resignFirstResponder()
        
        for color in 0...100 {
            progress.setProgress(Float(color), animated: true)
            progress.progressTintColor = UIColor.init(displayP3Red: 0.9, green: 0.7, blue: 0.7, alpha: 1)
            progress.trackTintColor = UIColor.init(displayP3Red: 0.1, green: 0.7, blue: 0.4, alpha: 1)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        url.layer.masksToBounds = true
        url.layer.borderColor = UIColor.gray.cgColor
        url.layer.borderWidth = 2.0
        url.layer.cornerRadius = 10.0
        url.placeholder = "http://"
        url.adjustsFontSizeToFitWidth = true
        url.minimumFontSize = 10
        progress.progress = 0
       
    }


}

