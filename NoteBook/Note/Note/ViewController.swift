//
//  ViewController.swift
//  Note
//
//  Created by 20161104615 on 2018/11/28.
//  Copyright © 2018 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuButton.target = self.revealViewController()
        menuButton.action = #selector(revealViewController()?.revealToggle(_:))
    
        self.view.addGestureRecognizer(revealViewController().panGestureRecognizer())
    }


}

