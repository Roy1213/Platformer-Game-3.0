//
//  WinScene.swift
//  Platformer Game - Roy Alameh
//
//  Created by Roy Alameh on 2/16/23.
//

import SpriteKit
import GameplayKit
import UIKit
import Foundation

class EndScene : SKScene {
    
    var entities = [GKEntity]()
    var graphs   = [String : GKGraph]()
    
    var label : SKLabelNode!
    var cam : SKCameraNode!
    var playAgainLabel: SKLabelNode!
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        label = SKLabelNode()
        label.fontName = "Zapfino"
        label.fontSize = 75
        
        playAgainLabel = SKLabelNode()
        playAgainLabel.fontName = "Zapfino"
        playAgainLabel.fontSize = 30
        playAgainLabel.position.x = label.position.x
        playAgainLabel.position.y = label.position.y - 150
        
        if !WinTracker.won {
            label.text = "Level Failed"
            playAgainLabel.text = "Replay Level \(LevelTracker.level + 1)?"
        }
        else if (LevelTracker.level == 3) {
            label.text = "You win!"
            playAgainLabel.text = "Play Again?"
            LevelTracker.level = 0
        }
        else {
            label.text = "Level Passed!"
            playAgainLabel.text = "Play Level \(LevelTracker.level + 1)"
        }
        playAgainLabel.name = "playAgainLabel"
        
        cam = SKCameraNode()
        self.camera = cam
        
        cam.position.x = label.position.x
        cam.position.y = label.position.y - 30
        
        self.addChild(label)
        self.addChild(cam)
        self.addChild(playAgainLabel)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "playAgainLabel" {
                playAgain()
            }
        }
    }
    
    func playAgain() {
        var gameScene : GameScene!
        if let scene = GKScene(fileNamed: "GameScene") {
            gameScene = scene.rootNode as? GameScene
            gameScene.entities = scene.entities
            gameScene.graphs = scene.graphs
            gameScene.scaleMode = .aspectFill
            if let view = self.view {
                let transition = SKTransition.fade(withDuration: 3)
                view.presentScene(gameScene, transition: transition)
                view.ignoresSiblingOrder = true
                view.showsFPS = false
                view.showsNodeCount = false
            }
        }
    }
}
