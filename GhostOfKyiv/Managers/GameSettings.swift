//
//  GameSettings.swift
//  WarFlyGame
//
//  Created by Serhii Dvornyk on 06.07.2022.
//

import UIKit

class GameSettings: NSObject {

    let userDefaults = UserDefaults.standard
    
    var isMusic = true
    var isSound = true
    
    var currentScore = 0
    var highScore = 0
    
    let musicKey = "musicKey"
    let soundKey = "soundKey"
    let highScoreKey = "highScore"
    
    override init() {
        super.init()
        
        loadGameSettings()
        loadScore()
    }
    
    func saveGameSettings() {
        userDefaults.set(isMusic, forKey: musicKey)
        userDefaults.set(isSound, forKey: soundKey)
    }
    
    func loadGameSettings() {
        guard userDefaults.value(forKey: musicKey) != nil && userDefaults.value(forKey: soundKey) != nil else { return }
        isMusic = userDefaults.bool(forKey: musicKey)
        isSound = userDefaults.bool(forKey: soundKey)
    }
    
    func saveScore() {
        highScore = currentScore
        userDefaults.set(highScore, forKey: highScoreKey)
        userDefaults.synchronize()
    }
    
    func loadScore() {
        guard userDefaults.value(forKey: highScoreKey) != nil else { return }
        highScore = userDefaults.integer(forKey: highScoreKey)
    }
    
}
