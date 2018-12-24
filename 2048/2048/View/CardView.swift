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
        super.init(coder: aDecoder)
    }
    
    func updateValue(to newValue: Int){
        value = newValue
    }
//    初次调用
    private func set(value: Int){
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
    
    func creatAnimation() {
        transform = CGAffineTransform.identity.scaledBy(x: 0.1, y: 0.1)
        UIViewPropertyAnimator.runningPropertyAnimator(
            withDuration: 0.1,
            delay: 0.0,
            options: [],
            animations: {
                self.transform = .identity
            }
        )
    }
    
    func flash(withValue value : Int = 0){
        transform = CGAffineTransform.identity.scaledBy(x: 0.8, y: 0.8)
        updateValue(to: value)
        UIViewPropertyAnimator.runningPropertyAnimator(
            withDuration: 0.08,
            delay: 0.0,
            options: [.repeat],
            animations: {
                self.transform = CGAffineTransform.identity.scaledBy(x: 1.1, y: 1.1)
            }
        ) { position in
            self.transform = .identity
        }
    }
}
