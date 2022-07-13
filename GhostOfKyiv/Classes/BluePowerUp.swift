//
//  BluePowerUp.swift
//  GhostOfKyiv
//
//  Created by Serhii Dvornyk on 30.06.2022.
//

import SpriteKit

class BluePowerUp: PowerUp {
    
    init() {
        let textureAtlas = Assets.shared.bluePowerUpAtlas
        super.init(textureAtlas: textureAtlas)
        name = "bluePowerUp"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
