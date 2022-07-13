//
//  Background.swift
//  WarFlyGame
//
//  Created by Serhii Dvornyk on 15.06.2022.
//

import SpriteKit

class Background: SKSpriteNode {

    static func populateBackground(at point: CGPoint) -> Background {
        
        let background = Background(imageNamed: "background")
        
        background.position = point
        background.zPosition = 2
        
        return background
    }
}
