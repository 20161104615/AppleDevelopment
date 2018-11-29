//
//  ViewController.swift
//  Test
//
//  Created by 20161104615 on 2018/11/29.
//  Copyright © 2018 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(revealViewController()?.revealToggle(_:))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

