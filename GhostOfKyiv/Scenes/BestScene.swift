//
//  BestScene.swift
//  WarFlyGame
//
//  Created by Serhii Dvornyk on 05.07.2022.
//

import SpriteKit

class BestScene: ParentScene {
    
    var bestScore: Int!
    
    override func didMove(to view: SKView) {
        
        gameSettings.loadScore()
        bestScore = gameSettings.highScore
        
        setHeader(withName: "best", andBackground: "header_background")
        
        let scoreLabel = SKLabelNode(text: "\(bestScore!)")
        scoreLabel.fontColor = UIColor.black
        scoreLabel.fontName = "AvenirNextCondensed-Bold"
        scoreLabel.fontSize = 30
        scoreLabel.position = CGPoint(x: self.frame.midX, y: self.frame.midY - 70)
        scoreLabel.zPosition = 1
        self.addChild(scoreLabel)
        
        let backButton = ButtonNode(titled: "back", backgroundName: "button_background")
        backButton.position = CGPoint(x: self.frame.midX, y: self.frame.midY - 200)
        backButton.name = "back"
        backButton.zPosition = 2
        self.addChild(backButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let location = touches.first!.location(in: self)
        let node = self.atPoint(location)
        
        if node.name == "back" {
            
            let transition = SKTransition.crossFade(withDuration: 1.0)
            guard let backScene = backScene else { return }
            backScene.scaleMode = .aspectFill
            self.scene?.view?.presentScene(backScene, transition: transition)
        }
    }
}
