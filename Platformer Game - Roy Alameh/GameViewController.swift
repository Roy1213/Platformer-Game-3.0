//
//  GameViewController.swift
//  Platformer Game - Roy Alameh
//
//  Created by Roy Alameh on 2/9/23.
//

//test

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
//    var gameScene : GameScene!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
//        // including entities and graphs.
//        if let scene = GKScene(fileNamed: "GameScene") {
//
//            // Get the SKScene from the loaded GKScene
//            if let sceneNode = scene.rootNode as! GameScene? {
//                sceneNode.entities = scene.entities
//                sceneNode.graphs = scene.graphs
//
//                // Set the scale mode to scale to fit the window
//                sceneNode.scaleMode = .aspectFill
//
//                // Present the scene
//                sceneNode.gameStart = true
//                print(sceneNode.gameStart)
//                if let view = self.view as! SKView? {
//                    view.preferredFramesPerSecond = 120
//                    view.isMultipleTouchEnabled = true
//                    //let transition = SKTransition.fade(withDuration: 3)
//                    view.presentScene(sceneNode)
//                    print(sceneNode.gameStart)
//
//                    view.ignoresSiblingOrder = true
//
//                    view.showsFPS = true
//                    view.showsNodeCount = false
//                }
//
//                gameScene = sceneNode
//            }
//        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var gameScene : EndScene!
        if let scene = GKScene(fileNamed: "EndScene") {
            gameScene = scene.rootNode as? EndScene
            gameScene.entities = scene.entities
            gameScene.graphs = scene.graphs
            gameScene.scaleMode = .aspectFill
            if let view = self.view as? SKView {
                let transition = SKTransition.fade(withDuration: 3)
                view.presentScene(gameScene, transition: transition)
                view.ignoresSiblingOrder = true
                view.showsFPS = false
                view.showsNodeCount = false
            }
        }
        gameScene.label.text = "Tap to begin!"
        gameScene.playAgainLabel.text = "PLAY"
    }
    
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
