//
//  ButtonNode.swift
//  WarFlyGame
//
//  Created by Serhii Dvornyk on 04.07.2022.
//

import SpriteKit

class ButtonNode: SKSpriteNode {
    
    let label: SKLabelNode = {
        let label = SKLabelNode(text: "")
        label.fontColor = UIColor.black
        label.fontName = "AvenirNextCondensed-Bold"
        label.fontSize = 30
        label.horizontalAlignmentMode = .center
        label.verticalAlignmentMode = .center
        label.zPosition = 2
        return label
    }()
    
    init(titled title: String?, backgroundName: String) {
        let texture = SKTexture(imageNamed: backgroundName)
        super.init(texture: texture, color: .clear, size: texture.size())
        if let title = title {
            label.text = title.uppercased()
        }
        self.addChild(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
