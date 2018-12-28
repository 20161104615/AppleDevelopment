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
//    var loadIndicator:UIActivityIndicatorView!
//    //进度条计时器
//    var ptimer:Timer!
    
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
    
//
//    func setupBrowserToolbar(){
//        //创建计时器对象
//        ptimer = Timer.scheduledTimer(timeInterval: 0.2, target:self,
//                                      selector: #selector(ViewController().loadProgress()),
//                                      userInfo:nil,repeats:true)
//        ptimer.invalidate()
//    }
//
//
//
//    func loadUrl(_ url:String){
//        let urlobj = URL(string:url)
//        let request = URLRequest(url:urlobj!)
//        webview.loadRequest(request);
//    }
//
//    func stopClicked(_ sender:UIBarButtonItem){
//        webview.stopLoading()
//    }
//
//    func reloadClicked(_ sender:UIBarButtonItem){
//        webview.reload()
//    }
//
//    func backClicked(_ sender:UIBarButtonItem){
//        webview.goBack()
//    }
//
//    func forwardClicked(_ sender:UIBarButtonItem){
//        webview.goForward()
//    }
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//    func webViewDidStartLoad(_ webView:UIWebView){
//        progBar.setProgress(0, animated:false);
//        ptimer.fire();
//        loadIndicator.startAnimating();
//    }
//    func webViewDidFinishLoad(_ webView:UIWebView){
//        loadIndicator.stopAnimating();
//        progBar.setProgress(1, animated:true);
//        ptimer.invalidate();
//    }
//    func loadProgress(){
//        // 如果进度满了，停止计时器
//        if(progBar.progress >= 1.0){
//            // 停用计时器
//            ptimer.invalidate();
//        } else {
//            // 改变进度条的进度值
//            progBar.setProgress(progBar.progress + 0.02, animated:true);
//        }
//    }
//
//    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
//        //999错误过滤(防止页面正在加载时候，点击stop按钮，提示NSURLErrorDomain error=-999)
//        if error._code == NSURLErrorCancelled {
//            return
//        }
//
//        let alertController = UIAlertController(title: "出错!",
//                                                message: error.localizedDescription,
//                                                preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
//        alertController.addAction(okAction)
//        self.present(alertController, animated: true, completion: nil)
//    }


}

