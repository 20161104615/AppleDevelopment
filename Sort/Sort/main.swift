//
//  main.swift
//  Sort
//
//  Created by 20161104615 on 2018/9/14.
//  Copyright © 2018年 20161104615. All rights reserved.
//

import Foundation

var someA:[Int] = [3,4,1,5,6,2]

var length = someA.count
var i = 0
var j = 0
var k = 0
var swap = 0


for i in 0...length-2{
    swap = 0
    for j in 0...length-i-2{
        if someA[j] > someA[j+1]{
            swap = someA[j+1]
            someA[j+1] = someA[j]
            someA[j] = swap
        }
    }
}
for k in 0...length-1{
    print("\(someA[k])",terminator:" ")
}
