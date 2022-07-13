//
//  HUD.swift
//  WarFlyGame
//
//  Created by Serhii Dvornyk on 04.07.2022.
//

import SpriteKit

class HUD: SKNode {

    let scoreBackground = SKSpriteNode(imageNamed: "scores")
    var scoreLabel = SKLabelNode(text: "0")
    var score: Int = 0 {
        didSet {
            scoreLabel.text = score.description
        }
    }
    let menuButton = SKSpriteNode(imageNamed: "pause")
    let life1 = SKSpriteNode(imageNamed: "life")
    let life2 = SKSpriteNode(imageNamed: "life")
    let life3 = SKSpriteNode(imageNamed: "life")
    
    func configureUI(screenSize: CGSize) {
        
        scoreBackground.position = CGPoint(x: scoreBackground.size.width - 60, y: screenSize.height - scoreBackground.size.height / 2 - 30)
        scoreBackground.anchorPoint = CGPoint(x: 1.0, y: 0.5)
        scoreBackground.setScale(0.7)
        scoreBackground.zPosition = 99
        self.addChild(scoreBackground)
        
        scoreLabel.verticalAlignmentMode = .center
        scoreLabel.horizontalAlignmentMode = .right
        scoreLabel.position = CGPoint(x: -20, y: -1)
        scoreLabel.zPosition = 100
        scoreLabel.fontName = "GeezaPro-Bold"
        scoreLabel.fontSize = 24
        scoreBackground.addChild(scoreLabel)
        
        menuButton.position = CGPoint(x: 15, y: 30)
        menuButton.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        menuButton.zPosition = 100
        menuButton.name = "pause"
        self.addChild(menuButton)
        
        let lifes = [life1, life2, life3]
        for (index, life) in lifes.enumerated() {
            life.position = CGPoint(x: screenSize.width - CGFloat(index + 1) * (life.size.width + 10), y: 30)
            life.setScale(1.2)
            life.zPosition = 100
            life.anchorPoint = CGPoint(x: 0.0, y: 0.0)
            addChild(life)
        }
    }
}
