//
//  OptionsScene.swift
//  GhostOfKyiv
//
//  Created by Serhii Dvornyk on 05.07.2022.
//

import SpriteKit

class OptionsScene: ParentScene {
    
    var isMusic: Bool!
    var isSound: Bool!
    
    override func didMove(to view: SKView) {
        
        isMusic = gameSettings.isMusic
        isSound = gameSettings.isSound
        
        setHeader(withName: "options", andBackground: "header_background")
        
        let backgroundNameForMusicButton = isMusic == true ? "music" : "nomusic"
        
        let musicButton = ButtonNode(titled: nil, backgroundName: backgroundNameForMusicButton)
        musicButton.position = CGPoint(x: self.frame.midX - 65, y: self.frame.midY - 60)
        musicButton.name = "music"
        musicButton.setScale(0.15)
        musicButton.zPosition = 1
        musicButton.label.isHidden = true
        self.addChild(musicButton)
        
        let backgroundNameForSoundButton = isSound == true ? "sound" : "nosound"
        
        let soundButton = ButtonNode(titled: nil, backgroundName: backgroundNameForSoundButton)
        soundButton.position = CGPoint(x: self.frame.midX + 65, y: self.frame.midY - 60)
        soundButton.name = "sound"
        soundButton.setScale(0.15)
        musicButton.zPosition = 1
        soundButton.label.isHidden = true
        self.addChild(soundButton)
        
        let backButton = ButtonNode(titled: "back", backgroundName: "button_background")
        backButton.position = CGPoint(x: self.frame.midX, y: self.frame.midY - 200)
        backButton.name = "back"
        backButton.zPosition = 2
        self.addChild(backButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let location = touches.first!.location(in: self)
        let node = self.atPoint(location)
        
        if node.name == "music" {
            isMusic = !isMusic
            update(node: node as! SKSpriteNode, property: isMusic)
        } else if node.name == "sound" {
            isSound = !isSound
            update(node: node as! SKSpriteNode, property: isSound)
        } else if node.name == "back" {
            
            gameSettings.isMusic = isMusic
            gameSettings.isSound = isSound
            gameSettings.saveGameSettings()
            
            let transition = SKTransition.crossFade(withDuration: 1.0)
            guard let backScene = backScene else { return }
            backScene.scaleMode = .aspectFill
            self.scene?.view?.presentScene(backScene, transition: transition)
        }
    }
    
    func update(node: SKSpriteNode, property: Bool) {
        if let name = node.name {
            node.texture = property ? SKTexture(imageNamed: name) : SKTexture(imageNamed: "no" + name)
        }
    }
}
