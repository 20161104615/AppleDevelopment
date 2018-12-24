//
//  Bird.swift
//  FlappyBird
//
//  Created by 20161104615 on 2018/12/21.
//  Copyright © 2018 20161104615. All rights reserved.
//

import UIKit

class Bird {
    var x: CGFloat = 0
    var y: CGFloat = 0
    var ySpeed: CGFloat = 0
    let xSpeed: CGFloat = 2
    let upForce: CGFloat = -10
    let radisu: CGFloat = 16
    
    init() {
        let screen = UIScreen.main.bounds
        let height = screen * 0.5
        
        x = 64
    }
}
