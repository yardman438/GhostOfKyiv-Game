//
//  Island.swift
//  GhostOfKyiv
//
//  Created by Serhii Dvornyk on 15.06.2022.
//

import UIKit
import GameplayKit

final class Tree: SKSpriteNode, GameBackgroundSpriteable {

    static func populate(at point: CGPoint?) -> Tree {
        
        let islandImageName = configureImageName()
        let island = Tree(imageNamed: islandImageName)
        
        island.setScale(randomScaleFactor)
        island.position = point ?? randomPoint()
        island.zPosition = 3
        island.name = "sprite"
        island.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        island.run(rotateForRandomAngle())
        island.run(move(from: island.position))
        
        return island
    }
    
    fileprivate static func configureImageName() -> String {
//        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 4)
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 8)
        let randomNumber = distribution.nextInt()
        //let imageName = "is" + "\(randomNumber)"
        let imageName = "tr" + "\(randomNumber)"
        
        return imageName
    }
    
    fileprivate static var randomScaleFactor: CGFloat {
        let distribution = GKRandomDistribution(lowestValue: 1, highestValue: 5)
        let randomNumber = CGFloat(distribution.nextInt()) / 20
        
        return randomNumber
    }
    
    fileprivate static func rotateForRandomAngle() -> SKAction {
        let distribution = GKRandomDistribution(lowestValue: 0, highestValue: 360)
        let randomNumber = CGFloat(distribution.nextInt())
        
        return SKAction.rotate(toAngle: randomNumber * CGFloat(Double.pi / 180), duration: 0)
    }
    
    fileprivate static func move(from point: CGPoint) -> SKAction {
        
        let movePoint = CGPoint(x: point.x, y: -200)
        let moveDistance = point.y + 200
        let movementSpeed: CGFloat = 100.0
        let duration = moveDistance / movementSpeed
        
        return SKAction.move(to: movePoint, duration: TimeInterval(duration))
    }
}
