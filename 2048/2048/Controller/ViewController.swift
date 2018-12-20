//
//  ViewController.swift
//  2048
//
//  Created by 20161104615 on 2018/12/14.
//  Copyright © 2018 20161104615. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GameViewDelegate {

    private let size = 4
    private lazy var  game = Game(size: size)
    
    @IBOutlet weak var gameView: GameView! {
        didSet{
            gameView.size = size
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameView.delegate = self
        DispatchQueue.main.asyncAfter(
        deadline: .now() + .milliseconds(500)) {
            self.startGame()
        }
    }

    private func startGame() {
        self.game.start { (startCards) in
            self.gameView.performAations(startCards)
        }
    }
    
    func slideEnded(offset: CGPoint) {
        let direction: Direction
        if offset.y > offset.x {
            if offset.y > -offset.x{
                direction = .down
            } else{
                direction = .left
            }
        } else{
            if offset.y > -offset.x {
                direction = .right
            } else{
                direction = .up
            }
        }
        game.move(direction) { (actions) in
            gameView.performAations(actions)
        }
    }
}

