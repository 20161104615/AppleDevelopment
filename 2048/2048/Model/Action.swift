//
//  Action.swift
//  2048
//
//  Created by 20161104615 on 2018/12/19.
//  Copyright © 2018 20161104615. All rights reserved.
//

import Foundation

enum Action{
    case move(from: Position, to: Position)
    case upgrade(from: Position, to: Position, value: Int)
    case new(at: Position, value: Int)
    case success
    case failure
}
