//
//  YellowShot.swift
//  GhostOfKyiv
//
//  Created by Serhii Dvornyk on 30.06.2022.
//

import SpriteKit

class YellowShot: Shot {

    init() {
        let textureAtlas = Assets.shared.yellowShotAtlas
        super.init(textureAtlas: textureAtlas)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
