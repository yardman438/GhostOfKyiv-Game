//
//  ParentScene.swift
//  GhostOfKyiv
//
//  Created by Serhii Dvornyk on 05.07.2022.
//

import SpriteKit

class ParentScene: SKScene {
    
    let sceneManager = SceneManager.shared
    let gameSettings = GameSettings()
    var backScene: SKScene?
    
    override init(size: CGSize) {
        super.init(size: size)
        setupBackground()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setHeader(withName name: String?, andBackground backgroundName: String) {
        let header = ButtonNode(titled: name, backgroundName: backgroundName)
        header.position = CGPoint(x: self.frame.midX, y: self.frame.midY + 60)
        self.addChild(header)
    }
    
    fileprivate func setupBackground() {
        let background = Background(imageNamed: "menu_background")
        background.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        background.zPosition = 0
        background.size = self.size
        self.addChild(background)
    }
}
