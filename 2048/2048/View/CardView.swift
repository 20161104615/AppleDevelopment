//
//  CardView.swift
//  2048
//
//  Created by 20161104615 on 2018/12/19.
//  Copyright © 2018 20161104615. All rights reserved.
//

import UIKit

class CardView: UIView {

    private let label = UILabel()
    
    private var value: Int = 0 {
        didSet {
            if value == 0{
                isHidden = true
            } else{
                isHidden = false
                backgroundColor = .orange
                label.text = "\(value)"
                label.textColor = .white
            }
        }
    }
    
    init(frame: CGRect, value: Int) {
        super.init(frame: frame)
        self.frame = frame
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 10.0
        set(value: value)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateValue(to newValue: Int){
        value = newValue
    }
    
    private func set(value:Int){
        label.textAlignment = .center
        label.font  = UIFont.boldSystemFont(ofSize: 38.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        self.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor),
            label.trailingAnchor.constraint(equalTo: trailingAnchor),
            label.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        updateValue(to: value)
    }
}
