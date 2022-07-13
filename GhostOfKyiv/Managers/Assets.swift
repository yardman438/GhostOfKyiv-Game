//
//  Assets.swift
//  WarFlyGame
//
//  Created by Serhii Dvornyk on 30.06.2022.
//

import SpriteKit

class Assets {

    static let shared = Assets()
    
    var isLoaded = false
    
    let yellowShotAtlas = SKTextureAtlas(named: "YellowAmmo")
    let greenPowerUpAtlas = SKTextureAtlas(named: "GreenPowerUp")
    let bluePowerUpAtlas = SKTextureAtlas(named: "BluePowerUp")
    let enemy_1Atlas = SKTextureAtlas(named: "Enemy_1")
    let enemy_2Atlas = SKTextureAtlas(named: "Enemy_2")
    let playerPlaneAtlas = SKTextureAtlas(named: "PlayerPlane")

    func preloadAssets() {
        yellowShotAtlas.preload { print("yellowShotAtlas preloaded") }
        greenPowerUpAtlas.preload { print("greenPowerUpAtlas preloaded") }
        bluePowerUpAtlas.preload { print("bluePowerUpAtlas preloaded") }
        enemy_1Atlas.preload { print("enemy_1Atlas preloaded") }
        enemy_2Atlas.preload { print("enemy_2Atlas preloaded") }
        playerPlaneAtlas.preload { print("playerPlaneAtlas preloaded") }
    }
}
