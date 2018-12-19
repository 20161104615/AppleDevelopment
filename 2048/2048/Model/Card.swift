//
//  File.swift
//  2048
//
//  Created by 20161104615 on 2018/12/14.
//  Copyright © 2018 20161104615. All rights reserved.
//

import Foundation
class Card{
    private var value = 0
    init(value: Int = 0) {
        self.value = value
    }
    
    func getValue() -> Int{
        return value
    }
    
    func upgrade() -> Int{
        value *= 2
        return value
    }
}
