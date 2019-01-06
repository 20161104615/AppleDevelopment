//
//  ViewController.swift
//  TESTBROWSER
//
//  Created by 20161104615 on 2018/12/28.
//  Copyright © 2018 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate,UITextFieldDelegate {

    
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var url: UITextField!
    @IBOutlet weak var webview: UIWebView!

    
    @IBAction func buttonFlash(_ sender: Any) {
        webview.reload()
    }
    @IBAction func buttonBack(_ sender: Any) {
        webview.goBack()
    }
    @IBAction func buttonGo(_ sender: Any) {
        webview.goForward()
    }
    
    @IBAction func buttonStop(_ sender: Any) {
        webview.stopLoading()
    }
    
    
    @IBAction func buttonClick(_ sender: Any) {
        _ = 0
        self.webview.loadRequest(NSURLRequest(url: NSURL(string: "http://" + url.text!)! as URL) as URLRequest)
        url!.resignFirstResponder()
        
        for color in 0...1000 {
            progress.setProgress(Float(color), animated: true)
            progress.progressTintColor = UIColor.init(displayP3Red: 0.9, green: 0.7, blue: 0.7, alpha: 1)
            progress.trackTintColor = UIColor.init(displayP3Red: 0.1, green: 0.7, blue: 0.4, alpha: 1)
        }
    }
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(revealViewController().revealToggle(_:))
    self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
        
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

