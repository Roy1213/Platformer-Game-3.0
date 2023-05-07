//
//  GameScene.swift
//  Platformer Game - Roy Alameh
//
//  Created by Roy Alameh on 2/9/23.
//

import SpriteKit
import GameplayKit
import UIKit

class LevelTracker {
    static var level = 0
}

class Level {
    let groundSizes              : [[Int]]
    let wallSizes                : [[Int]]
    let jumpableWallSizes        : [[Int]]
    let coinPositions            : [[Int]]
    let enemy1Positions          : [[Int]]
    let enemy2Positions          : [[Int]]
    let enemy3Positions          : [[Int]]
    let enemy2Bounds             : [Int]
    let groundPositions          : [[Int]]
    let wallPositions            : [[Int]]
    let jumpableWallPositions    : [[Int]]
    let levelEndPosition         : [Int]
    var blackHoleCenters         : [CGPoint]
    var blackHoleAs              : [CGFloat]
    var blackHoleBs              : [CGFloat]
    var numsOfAccretionDiskStars : [Int]
    var angularVelocities        : [CGFloat]
    var centerLocations          : [CGPoint]
    var centerSizes              : [CGFloat]
    var centerColors             : [UIColor]
    var centerZDistance          : CGFloat
    
    init(level : Int) {
        if level == 0 {
            groundSizes         = [[2000, 100],
                                       [20, 50],
                                       [750, 50],
                                       [60, 20],
                                       [1000, 20]]
            
            wallSizes           = [[20, 300],
                                       [20, 300],
                                       [50, 48],
                                       [50, 200],
                                       [50, 150]]
            
            jumpableWallSizes   = [[20, 1000],
                                       [20, 1000],
                                       [20, 1000],
                                       [50, 1000],
                                       [50, 800]]
            
            coinPositions   =               [[200, 200],
                                             [500, 300],
                                             [600, 400],
                                             [1000, 600],
                                             [1100, 700]]
            
            enemy1Positions =               [[750, 310],
                                             [2250, 310],
                                             [2400, 310],
                                             [2550, 310],
                                             [2750, 310],
                                             [2850, 310]]
            
            enemy2Positions =               [[3780, 1680]]
            
            enemy3Positions =               [[1400, 200]]

            enemy2Bounds    =               [200]
            
            groundPositions =                     [[1000, 50],
                                                   [1500, 600],
                                                   [2525, 300],
                                                   [2925, 1485],
                                                   [3870, 1485]]
            
            wallPositions =                       [[500, 100],
                                                   [1000, 100],
                                                   [2125, 300],
                                                   [2175, 375],
                                                   [2925, 350]]
            
            jumpableWallPositions =               [[1500, 100],
                                                   [1100, 950],
                                                   [1900, 950],
                                                   [3400, 975],
                                                   [2925, 1075]]
            
            levelEndPosition =                     [4200, 1550]
            
            blackHoleCenters         = [CGPoint(x: 300, y: 600), CGPoint(x: 300, y: 600), CGPoint(x: 300, y: 600)]
            blackHoleAs              = [CGFloat(150), CGFloat(100), CGFloat(80)]
            blackHoleBs              = [CGFloat(30), CGFloat(20), CGFloat(16)]
            numsOfAccretionDiskStars = [40, 40, 40, 40, 40]
            angularVelocities        = [CGFloat(2.0), CGFloat(2.0), CGFloat(2.0), CGFloat(2.0), CGFloat(2.0)]
            centerLocations          = [CGPoint(x: 300, y: 600)]
            centerSizes              = [CGFloat(70)]
            centerColors             = [UIColor.darkGray]
            centerZDistance          = CGFloat(2500.0)
        }
        else if level == 1 {
            groundSizes         = [[2000, 100],
                                       [20, 50],
                                       [750, 50],
                                       [60, 20],
                                       [1000, 20]]
            
            wallSizes           = [[20, 300],
                                       [20, 300],
                                       [50, 48],
                                       [50, 200],
                                       [50, 150]]
            
            jumpableWallSizes   = [[20, 1000],
                                       [20, 1000],
                                       [20, 1000],
                                       [50, 1000],
                                       [50, 800]]
            
            coinPositions   =               [[200, 200],
                                             [500, 300],
                                             [600, 400],
                                             [1000, 600],
                                             [1100, 700]]
            
            enemy1Positions =               [[750, 310],
                                             [2250, 310],
                                             [2400, 310],
                                             [2550, 310],
                                             [2750, 310],
                                             [2850, 310]]
            
            enemy2Positions =               [[3780, 1680]]
            
            enemy3Positions =               [[1400, 200]]

            enemy2Bounds    =               [200]
            
            groundPositions =                     [[1000, 50],
                                                   [1500, 600],
                                                   [2525, 300],
                                                   [2925, 1485],
                                                   [3870, 1485]]
            
            wallPositions =                       [[500, 100],
                                                   [1000, 100],
                                                   [2125, 300],
                                                   [2175, 375],
                                                   [2925, 350]]
            
            jumpableWallPositions =               [[1500, 100],
                                                   [1100, 950],
                                                   [1900, 950],
                                                   [3400, 975],
                                                   [2925, 1075]]
            
            levelEndPosition =                     [4200, 1550]
            
            blackHoleCenters         = [CGPoint(x: 300, y: 600), CGPoint(x: 300, y: 600), CGPoint(x: 300, y: 600)]
            blackHoleAs              = [CGFloat(150), CGFloat(100), CGFloat(80)]
            blackHoleBs              = [CGFloat(30), CGFloat(20), CGFloat(16)]
            numsOfAccretionDiskStars = [40, 40, 40, 40, 40]
            angularVelocities        = [CGFloat(2.0), CGFloat(2.0), CGFloat(2.0), CGFloat(2.0), CGFloat(2.0)]
            centerLocations          = [CGPoint(x: 300, y: 600)]
            centerSizes              = [CGFloat(70)]
            centerColors             = [UIColor.darkGray]
            centerZDistance          = CGFloat(2500.0)
        }
        else {
            groundSizes         = [[2000, 100],
                                       [20, 50],
                                       [750, 50],
                                       [60, 20],
                                       [1000, 20]]
            
            wallSizes           = [[20, 300],
                                       [20, 300],
                                       [50, 48],
                                       [50, 200],
                                       [50, 150]]
            
            jumpableWallSizes   = [[20, 1000],
                                       [20, 1000],
                                       [20, 1000],
                                       [50, 1000],
                                       [50, 800]]
            
            coinPositions   =               [[200, 200],
                                             [500, 300],
                                             [600, 400],
                                             [1000, 600],
                                             [1100, 700]]
            
            enemy1Positions =               [[750, 310],
                                             [2250, 310],
                                             [2400, 310],
                                             [2550, 310],
                                             [2750, 310],
                                             [2850, 310]]
            
            enemy2Positions =               [[3780, 1680]]
            
            enemy3Positions =               [[1400, 200]]

            enemy2Bounds    =               [200]
            
            groundPositions =                     [[1000, 50],
                                                   [1500, 600],
                                                   [2525, 300],
                                                   [2925, 1485],
                                                   [3870, 1485]]
            
            wallPositions =                       [[500, 100],
                                                   [1000, 100],
                                                   [2125, 300],
                                                   [2175, 375],
                                                   [2925, 350]]
            
            jumpableWallPositions =               [[1500, 100],
                                                   [1100, 950],
                                                   [1900, 950],
                                                   [3400, 975],
                                                   [2925, 1075]]
            
            levelEndPosition =                     [4200, 1550]
            
            blackHoleCenters         = [CGPoint(x: 300, y: 600), CGPoint(x: 300, y: 600), CGPoint(x: 300, y: 600)]
            blackHoleAs              = [CGFloat(150), CGFloat(100), CGFloat(80)]
            blackHoleBs              = [CGFloat(30), CGFloat(20), CGFloat(16)]
            numsOfAccretionDiskStars = [40, 40, 40, 40, 40]
            angularVelocities        = [CGFloat(2.0), CGFloat(2.0), CGFloat(2.0), CGFloat(2.0), CGFloat(2.0)]
            centerLocations          = [CGPoint(x: 300, y: 600)]
            centerSizes              = [CGFloat(70)]
            centerColors             = [UIColor.darkGray]
            centerZDistance          = CGFloat(2500.0)
        }
    }
}

struct Star {
    var distance           : CGFloat
    var speedMultiplier    : CGFloat
    var body               : SKShapeNode
}

class Star2 {
    var xVelocity          : CGFloat
    var yVelocity          : CGFloat
    var time               : CGFloat
    var body               : SKShapeNode
    
    init (xVelocity : CGFloat, yVelocity : CGFloat, time : CGFloat, body : SKShapeNode){
        self.xVelocity = xVelocity
        self.yVelocity = yVelocity
        self.time = time
        self.body = body
    }
}

class AccretionDisk {
    var starsAccretionDisk : [Star2]
    var blackHoleCenter : CGPoint
    var blackHoleA : CGFloat
    var blackHoleB : CGFloat
    var numOfAccretionDiskStars : Int
    var angularVelocity : CGFloat
    
    init(starsAccretionDisk : [Star2], blackHoleCenter : CGPoint, blackHoleA : CGFloat, blackHoleB : CGFloat, numOfAccretionDiskStars : Int, angularVelocity : CGFloat) {
        self.starsAccretionDisk = starsAccretionDisk
        self.blackHoleCenter = blackHoleCenter
        self.blackHoleA = blackHoleA
        self.blackHoleB = blackHoleB
        self.numOfAccretionDiskStars = numOfAccretionDiskStars
        self.angularVelocity = angularVelocity
    }
}

class WinTracker {
    static var won = false
}
class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var entities = [GKEntity]()
    var graphs   = [String : GKGraph]()
    
    var moveRight = false
    var moveLeft  = false
    var jumpNum   = 0
    var maxJumps  = 2
    
    var player   : SKShapeNode!
    var cam      : SKCameraNode!
    var levelEnd : SKShapeNode!
    
    var camInitiateFollowX = 300
    var camInitiateFollowY = 150
    
    var playerStartX = 300
    var playerStartY = 600
    
    let playerCategory         : UInt32 = 0x1 << 0
    let groundCategory         : UInt32 = 0x1 << 1
    let coinCategory           : UInt32 = 0x1 << 2
    let enemy1Category         : UInt32 = 0x1 << 3
    let enemy2Category         : UInt32 = 0x1 << 4
    let enemy3Category         : UInt32 = 0x1 << 5
    let wallCategory           : UInt32 = 0x1 << 6
    let jumpableWallCategory   : UInt32 = 0x1 << 7
    let levelEndCategory       : UInt32 = 0x1 << 8
    
    let jumpSpeed       = 630
    let runMaxSpeed     = 400
    let runAcceleration = 6000
    
    let enemy1Speed           = 200
    let enemy2Speed           = 300
    let enemy3RetractionSpeed = 100
    let enemy3Acceleration    = 1500
    let enemy2JumpSpeed       = 800
    
    let playerWidth         = 45
    let playerHeight        = 100
    let coinRadius          = 15
    let enemy1Size          = [30, 50]
    let enemy2Size          = [40, 70]
    let enemy3Size          = [50, 100]
//    let groundSizes         = [[2000, 100],
//                               [20, 50],
//                               [750, 50],
//                               [60, 20],
//                               [1000, 20]]
//
//    let wallSizes           = [[20, 300],
//                               [20, 300],
//                               [50, 48],
//                               [50, 200],
//                               [50, 150]]
//
//    let jumpableWallSizes   = [[20, 1000],
//                               [20, 1000],
//                               [20, 1000],
//                               [50, 1000],
//                               [50, 800]]
//
//    let coinPositions   : [[Int]] = [[200, 200],
//                                     [500, 300],
//                                     [600, 400],
//                                     [1000, 600],
//                                     [1100, 700]]
//
//    let enemy1Positions : [[Int]] = [[750, 310],
//                                     [2250, 310],
//                                     [2400, 310],
//                                     [2550, 310],
//                                     [2750, 310],
//                                     [2850, 310]]
//    let enemy2Positions : [[Int]] = [[3780, 1680]]
//    let enemy3Positions : [[Int]] = [[1400, 200]]
    var enemy3Directions: [Bool] = []
//
//    let enemy2Bounds    : [Int] = [200]
//
//    let groundPositions       : [[Int]] = [[1000, 50],
//                                           [1500, 600],
//                                           [2525, 300],
//                                           [2925, 1485],
//                                           [3870, 1485]]
//
//    let wallPositions         : [[Int]] = [[500, 100],
//                                           [1000, 100],
//                                           [2125, 300],
//                                           [2175, 375],
//                                           [2925, 350]]
//
//    let jumpableWallPositions : [[Int]] = [[1500, 100],
//                                           [1100, 950],
//                                           [1900, 950],
//                                           [3400, 975],
//                                           [2925, 1075]]
//
//    let levelEndPosition = [4200, 1550]
    
    var coins           = [SKShapeNode]()
    var enemy1s         = [SKShapeNode]()
    var enemy2s         = [SKShapeNode]()
    var enemy3s         = [SKShapeNode]()
    var grounds         = [SKShapeNode]()
    var walls           = [SKShapeNode]()
    var jumpableWalls   = [SKShapeNode]()
    
    var inspectMode             = false
    var inspectInitialPositionX = 0
    var inspectInitialPositionY = 0
    var lastTouchX              : CGFloat!
    var lastTouchY              : CGFloat!
    
    var lives = 3
    var inAnimation = false
    var initialPositionYAnimation : CGFloat = 0
    
    var totalCoins = 0
    var coinsLabel : SKLabelNode!
    var livesLabel : SKLabelNode!
    
    var inspectOutlet     : SKLabelNode!
    var teleportOutlet    : SKLabelNode!
    var rightButtonOutlet : SKLabelNode!
    var leftButtonOutlet  : SKLabelNode!
    var smallJumpOutlet   : SKLabelNode!
    var largeJumpOutlet   : SKLabelNode!
    
    var jumpableWallAnimation = false
    var xVelocity             : CGFloat = 10.0
    var horizontalHopVelocity = 500
    var wallSlideVelocity     = 100
    
    var firstInit = true
    
    var timeToWait    = 0.4
    var timeWaited    = 0.0
    var canMove       = true
    var animationRate = 0.001
    
    let movementOutletSize = 250
    
    var rightLeg    : SKShapeNode!
    var leftLeg     : SKShapeNode!
    var rightArm    : SKShapeNode!
    var leftArm     : SKShapeNode!
    var torso       : SKShapeNode!
    var head        : SKShapeNode!
    
    var maxAngle : Double = Double.pi/8
    var direction         = 1
    var legLength         = 50
    var armLength         = 25
    var legCenterPoint    = CGPoint(x: 200, y: 400)
    var armCenterPoint    = CGPoint(x: 0, y: 500)
    var testPoint2 : SKShapeNode!
    
    var correctionConstant = 0.0
    
    var joint : SKPhysicsJoint!
    var centerOfMass: SKShapeNode!
    var joint2: SKPhysicsJoint!
    var centerOfMass2: SKShapeNode!
    var joint3: SKPhysicsJoint!
    var centerOfMass3: SKShapeNode!
    var joint4: SKPhysicsJoint!
    var centerOfMass4: SKShapeNode!
    
    var lastSpeed = 0
    var touchingGround = false
    var angularVelocityFactor = 0.5
    var armMultiplier = 2.0
    
    var COMAngle = 0.0
    var COM2Angle = 0.0
    var COM3Angle = 0.0
    var COM4Angle = 0.0
    
    var jumpAnimation = false
    
    var touches : [UITouch : String] = [:]
    
    var positionLabel : SKLabelNode!
    var centerCrossHair : SKLabelNode!
    var centerPoint     : SKShapeNode!
    
    var enemy3WaitTimes : [CGFloat] = [1.1]
    
    var gameStart = false
    
    var stars = [Star]()
    var numOfStars = 2000
    
    var accretionDisks = [AccretionDisk]()
    var centers = [SKShapeNode]()
    var originalLocationStars = [CGPoint]()
    var originalLocationBlackHoleCenters = [CGPoint]()
    var originalLocationCenters = [CGPoint]()
    
    let levels = [Level(level: 0), Level(level: 1), Level(level: 2)]
    var level = 0
    override func sceneDidLoad() {
        level = LevelTracker.level
        
        self.view?.preferredFramesPerSecond = 60
        
        self.physicsWorld.contactDelegate = self
        UIDevice.current.setValue(UIDeviceOrientation.landscapeLeft, forKey: "orientation")
        
        cam = SKCameraNode()
        self.camera = cam
        
        positionLabel = SKLabelNode()
        positionLabel.isHidden = true
        self.addChild(positionLabel)
        
//        centerCrossHair = SKLabelNode()
//        centerCrossHair.isHidden = true
//        centerCrossHair.text = "+"
//        self.addChild(centerCrossHair)
        
        centerPoint = SKShapeNode(circleOfRadius: 5)
        centerPoint.isHidden = true
        centerPoint.fillColor = UIColor.white
        self.addChild(centerPoint)
        
        levelEnd = SKShapeNode(circleOfRadius: 50)
        levelEnd.physicsBody = SKPhysicsBody(circleOfRadius: 50)
        
        levelEnd.physicsBody?.affectedByGravity  = false
        levelEnd.physicsBody?.pinned             = true
        levelEnd.physicsBody?.categoryBitMask    = levelEndCategory
        levelEnd.physicsBody?.collisionBitMask   = 0
        levelEnd.physicsBody?.contactTestBitMask = playerCategory
        
        levelEnd.position.x = CGFloat(levels[level].levelEndPosition[0])
        levelEnd.position.y = CGFloat(levels[level].levelEndPosition[1])
        
        levelEnd.fillColor = UIColor.black
        
        self.addChild(levelEnd)
        
        coinsLabel                 = SKLabelNode()
        coinsLabel.text            = "Coins: \(totalCoins)"
        self.addChild(coinsLabel)
        
        livesLabel                 = SKLabelNode()
        livesLabel.text            = "Lives: \(lives)"
        self.addChild(livesLabel)
        
        inspectOutlet              = SKLabelNode()
        inspectOutlet.text         = "Inspect"
        inspectOutlet.name         = "inspectOutlet"
        inspectOutlet.fontSize     = 30
        self.addChild(inspectOutlet)
        
        teleportOutlet             = SKLabelNode()
        teleportOutlet.text        = "Teleport"
        teleportOutlet.name        = "teleportOutlet"
        teleportOutlet.fontSize    = 30
        teleportOutlet.isHidden    = true
        self.addChild(teleportOutlet)
        
        rightButtonOutlet          = SKLabelNode()
        rightButtonOutlet.text     = "►"
        rightButtonOutlet.name     = "rightButtonOutlet"
        rightButtonOutlet.fontSize = CGFloat(movementOutletSize)
        self.addChild(rightButtonOutlet)
        
        leftButtonOutlet           = SKLabelNode()
        leftButtonOutlet.text      = "◄"
        leftButtonOutlet.name      = "leftButtonOutlet"
        leftButtonOutlet.fontSize  = CGFloat(movementOutletSize)
        self.addChild(leftButtonOutlet)
        
        /*smallJumpOutlet            = SKLabelNode()
        smallJumpOutlet.text       = "▲"
        smallJumpOutlet.name       = "smallJumpOutlet"
        smallJumpOutlet.fontSize   = CGFloat(movementOutletSize)
        self.addChild(smallJumpOutlet)*/
        
        largeJumpOutlet            = SKLabelNode()
        largeJumpOutlet.text       = "⍙"
        largeJumpOutlet.name       = "largeJumpOutlet"
        largeJumpOutlet.fontSize   = CGFloat(movementOutletSize)
        self.addChild(largeJumpOutlet)
        
        
        let legSize = CGSize(width: 10, height: legLength)
        rightLeg = SKShapeNode(rectOf: legSize)
        rightLeg.physicsBody = SKPhysicsBody(rectangleOf: legSize)
        rightLeg.physicsBody?.mass = 0.001
        rightLeg.position.x = 100
        rightLeg.position.y = 310
        rightLeg.physicsBody?.affectedByGravity = false
        rightLeg.physicsBody?.pinned = false
        rightLeg.physicsBody?.allowsRotation = true
        rightLeg.physicsBody?.categoryBitMask = 0
        rightLeg.physicsBody?.collisionBitMask = 0
        rightLeg.fillColor = UIColor.gray
        rightLeg.zPosition = 1000
        
        centerOfMass = SKShapeNode(circleOfRadius: 1)
        centerOfMass.physicsBody = SKPhysicsBody(circleOfRadius: 1)
        centerOfMass.position.x = rightLeg.position.x
        centerOfMass.position.y = rightLeg.position.y + CGFloat(legLength)/2
        centerOfMass.physicsBody?.mass = 0.001
        centerOfMass.physicsBody?.affectedByGravity = false
        centerOfMass.physicsBody?.pinned = false
        centerOfMass.physicsBody?.allowsRotation = true
        centerOfMass.physicsBody?.categoryBitMask = 0
        centerOfMass.physicsBody?.collisionBitMask = 0
        
        self.addChild(rightLeg)
        self.addChild(centerOfMass)
        
        joint = SKPhysicsJointFixed.joint(withBodyA: rightLeg.physicsBody!, bodyB: centerOfMass.physicsBody!, anchor: rightLeg.position)
        
        self.physicsWorld.add(joint)
        
        leftLeg = SKShapeNode(rectOf: legSize)
        leftLeg.physicsBody = SKPhysicsBody(rectangleOf: legSize)
        leftLeg.physicsBody?.mass = 0.001
        leftLeg.position.x = 100
        leftLeg.position.y = 310
        leftLeg.physicsBody?.affectedByGravity = false
        leftLeg.physicsBody?.pinned = false
        leftLeg.physicsBody?.allowsRotation = true
        leftLeg.physicsBody?.categoryBitMask = 0
        leftLeg.physicsBody?.collisionBitMask = 0
        leftLeg.fillColor = UIColor.gray
        leftLeg.zPosition = 1000
        
        centerOfMass2 = SKShapeNode(circleOfRadius: 1)
        centerOfMass2.physicsBody = SKPhysicsBody(circleOfRadius: 1)
        centerOfMass2.position.x = rightLeg.position.x
        centerOfMass2.position.y = rightLeg.position.y + CGFloat(legLength)/2
        centerOfMass2.physicsBody?.mass = 0.001
        centerOfMass2.physicsBody?.affectedByGravity = false
        centerOfMass2.physicsBody?.pinned = false
        centerOfMass2.physicsBody?.allowsRotation = true
        centerOfMass2.physicsBody?.categoryBitMask = 0
        centerOfMass2.physicsBody?.collisionBitMask = 0
        
        self.addChild(leftLeg)
        self.addChild(centerOfMass2)
        
        joint2 = SKPhysicsJointFixed.joint(withBodyA: leftLeg.physicsBody!, bodyB: centerOfMass2.physicsBody!, anchor: leftLeg.position)
        
        self.physicsWorld.add(joint2)
        
        let armSize = CGSize(width: 7, height: armLength)
        rightArm = SKShapeNode(rectOf: armSize)
        rightArm.physicsBody = SKPhysicsBody(rectangleOf: armSize)
        rightArm.physicsBody?.mass = 0.001
        rightArm.position.x = 100
        rightArm.position.y = 310
        rightArm.physicsBody?.affectedByGravity = false
        rightArm.physicsBody?.pinned = false
        rightArm.physicsBody?.allowsRotation = true
        rightArm.physicsBody?.categoryBitMask = 0
        rightArm.physicsBody?.collisionBitMask = 0
        rightArm.fillColor = UIColor.gray
        rightArm.zPosition = 1000
        
        centerOfMass3 = SKShapeNode(circleOfRadius: 1)
        centerOfMass3.physicsBody = SKPhysicsBody(circleOfRadius: 1)
        centerOfMass3.position.x = rightArm.position.x
        centerOfMass3.position.y = rightArm.position.y + CGFloat(armLength)/2
        centerOfMass3.physicsBody?.mass = 0.001
        centerOfMass3.physicsBody?.affectedByGravity = false
        centerOfMass3.physicsBody?.pinned = false
        centerOfMass3.physicsBody?.allowsRotation = true
        centerOfMass3.physicsBody?.categoryBitMask = 0
        centerOfMass3.physicsBody?.collisionBitMask = 0
        
        self.addChild(rightArm)
        self.addChild(centerOfMass3)
        
        joint3 = SKPhysicsJointFixed.joint(withBodyA: rightArm.physicsBody!, bodyB: centerOfMass3.physicsBody!, anchor: rightArm.position)
        
        self.physicsWorld.add(joint3)
        
        leftArm = SKShapeNode(rectOf: armSize)
        leftArm.physicsBody = SKPhysicsBody(rectangleOf: armSize)
        leftArm.physicsBody?.mass = 0.001
        leftArm.position.x = 100
        leftArm.position.y = 310
        leftArm.physicsBody?.affectedByGravity = false
        leftArm.physicsBody?.pinned = false
        leftArm.physicsBody?.allowsRotation = true
        leftArm.physicsBody?.categoryBitMask = 0
        leftArm.physicsBody?.collisionBitMask = 0
        leftArm.fillColor = UIColor.gray
        leftArm.zPosition = 1000
        
        centerOfMass4 = SKShapeNode(circleOfRadius: 1)
        centerOfMass4.physicsBody = SKPhysicsBody(circleOfRadius: 1)
        centerOfMass4.position.x = rightArm.position.x
        centerOfMass4.position.y = rightArm.position.y + CGFloat(armLength)/2
        centerOfMass4.physicsBody?.mass = 0.001
        centerOfMass4.physicsBody?.affectedByGravity = false
        centerOfMass4.physicsBody?.pinned = false
        centerOfMass4.physicsBody?.allowsRotation = true
        centerOfMass4.physicsBody?.categoryBitMask = 0
        centerOfMass4.physicsBody?.collisionBitMask = 0
        
        self.addChild(leftArm)
        self.addChild(centerOfMass4)
        
        joint4 = SKPhysicsJointFixed.joint(withBodyA: leftArm.physicsBody!, bodyB: centerOfMass4.physicsBody!, anchor: leftArm.position)
        
        self.physicsWorld.add(joint4)
        
        //why do circles and rectangles behave differently (circle follows joint when rotation disabled, rectangle does not)?
        
        torso = SKShapeNode(rectOf: CGSize(width: 10, height: Int(Double(legLength) * 0.75)))
        torso.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 10, height: Int(Double(legLength) * 0.75)))
//        torso = SKShapeNode(circleOfRadius: 10)
//        torso.physicsBody = SKPhysicsBody(circleOfRadius: 10)
        torso.physicsBody?.affectedByGravity = false
        torso.physicsBody?.pinned = false
        torso.physicsBody?.allowsRotation = false
        torso.physicsBody?.categoryBitMask = 0
        torso.physicsBody?.collisionBitMask = 0
        torso.fillColor = UIColor.gray
        torso.zPosition = 1000
        
        head = SKShapeNode(circleOfRadius: CGFloat(legLength) * 0.25)
        head.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(legLength) * 0.25)
        head.physicsBody?.affectedByGravity = false
        head.physicsBody?.pinned = false
        head.physicsBody?.allowsRotation = false
        head.physicsBody?.categoryBitMask = 0
        head.physicsBody?.collisionBitMask = 0
        head.fillColor = UIColor.gray
        head.zPosition = 1000
        
        self.addChild(torso)
        self.addChild(head)
        
        initPlayer(fromBegining: true)
        
        legCenterPoint = player.position
        armCenterPoint = player.position
        armCenterPoint = CGPoint(x: player.position.x, y: player.position.y + CGFloat(playerHeight/4))
        
//        let distanceX = rightLeg.position.x - legCenterPoint.x
//        let distanceY = rightLeg.position.y - legCenterPoint.y
//        let distanceXArm = rightArm.position.x - armCenterPoint.x
//        let distanceYArm = rightArm.position.y - armCenterPoint.y
        
        //try to understand anchor point better
        
        centerOfMass.position.x = legCenterPoint.x
        centerOfMass.position.y = legCenterPoint.y
        centerOfMass2.position.x = legCenterPoint.x
        centerOfMass2.position.y = legCenterPoint.y
        centerOfMass3.position.x = armCenterPoint.x
        centerOfMass3.position.y = armCenterPoint.y
        centerOfMass4.position.x = armCenterPoint.x
        centerOfMass4.position.y = armCenterPoint.y
        
        torso.position.x = player.position.x
        torso.position.y = player.position.y + CGFloat(legLength) * 0.375
        head.position.x = player.position.x
        head.position.y = player.position.y + CGFloat(legLength) * 0.75
    
        centerOfMass.zRotation = 0
        centerOfMass2.zRotation = 0
        centerOfMass3.zRotation = 0
        centerOfMass4.zRotation = 0
        
        let joint5 = SKPhysicsJointPin.joint(withBodyA: centerOfMass.physicsBody!, bodyB: player.physicsBody!, anchor: centerOfMass.position)
        let joint6 = SKPhysicsJointPin.joint(withBodyA: centerOfMass2.physicsBody!, bodyB: player.physicsBody!, anchor: centerOfMass2.position)
        let joint7 = SKPhysicsJointPin.joint(withBodyA: centerOfMass3.physicsBody!, bodyB: player.physicsBody!, anchor: centerOfMass3.position)
        //let joint7 = SKPhysicsJointPin.joint(withBodyA: player.physicsBody!, bodyB: centerOfMass3.physicsBody!, anchor: centerOfMass3.position)
        let joint8 = SKPhysicsJointPin.joint(withBodyA: centerOfMass4.physicsBody!, bodyB: player.physicsBody!, anchor: centerOfMass4.position)
        let joint9 = SKPhysicsJointPin.joint(withBodyA: torso.physicsBody!, bodyB: player.physicsBody!, anchor: torso.position)
        let joint10 = SKPhysicsJointPin.joint(withBodyA: head.physicsBody!, bodyB: player.physicsBody!, anchor: head.position)
        
        
        rightLeg.physicsBody?.angularDamping = 0
        leftLeg.physicsBody?.angularDamping = 0
        rightArm.physicsBody?.angularDamping = 0
        rightLeg.physicsBody?.angularDamping = 0
        centerOfMass.physicsBody?.angularDamping = 0
        centerOfMass2.physicsBody?.angularDamping = 0
        centerOfMass3.physicsBody?.angularDamping = 0
        centerOfMass4.physicsBody?.angularDamping = 0
        
        self.physicsWorld.add(joint5)
        self.physicsWorld.add(joint6)
        self.physicsWorld.add(joint7)
        self.physicsWorld.add(joint8)
        self.physicsWorld.add(joint9)
        self.physicsWorld.add(joint10)
        
        
        //animate()
//        centerOfMass.physicsBody?.allowsRotation = false
//        centerOfMass2.physicsBody?.allowsRotation = false
//        centerOfMass3.physicsBody?.allowsRotation = false
//        centerOfMass4.physicsBody?.allowsRotation = false
        //centerOfMass.zRotation = 1
        
        for i in 0..<levels[level].coinPositions.count {
            let coin = SKShapeNode(circleOfRadius: CGFloat(coinRadius))
            coin.physicsBody = SKPhysicsBody(circleOfRadius: CGFloat(coinRadius))
            
            coin.physicsBody?.affectedByGravity  = false
            coin.physicsBody?.isDynamic          = false
            coin.physicsBody?.pinned             = true
            coin.physicsBody?.allowsRotation     = false
            
            coin.physicsBody?.categoryBitMask    = coinCategory
            coin.physicsBody?.collisionBitMask   = 0
            coin.physicsBody?.contactTestBitMask = playerCategory
            
            coin.position.x = CGFloat(Double(levels[level].coinPositions[i][0]))
            coin.position.y = CGFloat(Double(levels[level].coinPositions[i][1]))
            
            coin.fillColor = UIColor.black
            
            coins.append(coin)
            self.addChild(coin)
        }
        
        for i in 0..<levels[level].groundPositions.count {
            let ground = SKShapeNode(rectOf: CGSize(width: CGFloat(levels[level].groundSizes[i][0]), height: CGFloat(levels[level].groundSizes[i][1])))
            ground.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: CGFloat(levels[level].groundSizes[i][0]), height: CGFloat(levels[level].groundSizes[i][1])))
            
            ground.physicsBody?.affectedByGravity  = false
            ground.physicsBody?.isDynamic          = false
            ground.physicsBody?.pinned             = true
            ground.physicsBody?.allowsRotation     = false
            ground.physicsBody?.restitution        = 0
            ground.physicsBody?.friction           = 0
            
            ground.physicsBody?.categoryBitMask    = groundCategory
            ground.physicsBody?.collisionBitMask   = playerCategory
            ground.physicsBody?.contactTestBitMask = playerCategory
            
            ground.position.x = CGFloat(Double(levels[level].groundPositions[i][0]))
            ground.position.y = CGFloat(Double(levels[level].groundPositions[i][1]))
            
            ground.fillColor = UIColor.black
            
            grounds.append(ground)
            self.addChild(ground)
        }
        
        for i in 0..<levels[level].enemy1Positions.count {
            let enemy1 = SKShapeNode(rectOf: CGSize(width: CGFloat(enemy1Size[0]), height: CGFloat(enemy1Size[1])))
            enemy1.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: CGFloat(enemy1Size[0]), height: CGFloat(enemy1Size[1])))
            
            enemy1.physicsBody?.affectedByGravity  = true
            enemy1.physicsBody?.isDynamic          = true
            enemy1.physicsBody?.pinned             = false
            enemy1.physicsBody?.allowsRotation     = false
            enemy1.physicsBody?.restitution        = 0
            enemy1.physicsBody?.friction           = 0
            enemy1.physicsBody?.angularDamping     = 0
            enemy1.physicsBody?.linearDamping      = 0
            
            enemy1.physicsBody?.categoryBitMask    = enemy1Category
            enemy1.physicsBody?.collisionBitMask   = groundCategory
            enemy1.physicsBody?.contactTestBitMask = playerCategory | wallCategory | jumpableWallCategory
            
            enemy1.position.x = CGFloat(Double(levels[level].enemy1Positions[i][0]))
            enemy1.position.y = CGFloat(Double(levels[level].enemy1Positions[i][1]))
            
            enemy1.fillColor = UIColor.black
            
            enemy1s.append(enemy1)
            self.addChild(enemy1)
            
            enemy1.physicsBody?.velocity.dx = CGFloat(enemy1Speed)
        }
        
        for i in 0..<levels[level].enemy2Positions.count {
            let enemy2 = SKShapeNode(rectOf: CGSize(width: CGFloat(enemy2Size[0]), height: CGFloat(enemy2Size[1])))
            enemy2.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: CGFloat(enemy2Size[0]), height: CGFloat(enemy2Size[1])))
            
            enemy2.physicsBody?.affectedByGravity  = true
            enemy2.physicsBody?.isDynamic          = true
            enemy2.physicsBody?.pinned             = false
            enemy2.physicsBody?.allowsRotation     = false
            enemy2.physicsBody?.restitution        = 0
            enemy2.physicsBody?.friction           = 0
            enemy2.physicsBody?.angularDamping     = 0
            enemy2.physicsBody?.linearDamping      = 0
            
            enemy2.physicsBody?.categoryBitMask    = enemy2Category
            enemy2.physicsBody?.collisionBitMask   = groundCategory
            enemy2.physicsBody?.contactTestBitMask = playerCategory | groundCategory
            
            enemy2.position.x = CGFloat(Double(levels[level].enemy2Positions[i][0]))
            enemy2.position.y = CGFloat(Double(levels[level].enemy2Positions[i][1]))
            
            enemy2s.append(enemy2)
            self.addChild(enemy2)
            
            enemy2.fillColor = UIColor.black
            
            enemy2.physicsBody?.velocity.dx = CGFloat(enemy2Speed)
        }
        
        for i in 0..<levels[level].enemy3Positions.count {
            let enemy3 = SKShapeNode(rectOf: CGSize(width: CGFloat(enemy3Size[0]), height: CGFloat(enemy3Size[1])))
            enemy3.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: CGFloat(enemy3Size[0]), height: CGFloat(enemy3Size[1])))
            
            enemy3.physicsBody?.affectedByGravity  = true
            enemy3.physicsBody?.isDynamic          = true
            enemy3.physicsBody?.pinned             = false
            enemy3.physicsBody?.allowsRotation     = false
            enemy3.physicsBody?.restitution        = 0.2
            enemy3.physicsBody?.friction           = 0
            enemy3.physicsBody?.angularDamping     = 0
            enemy3.physicsBody?.linearDamping      = 0
            
            enemy3.physicsBody?.categoryBitMask    = enemy3Category
            enemy3.physicsBody?.collisionBitMask   = groundCategory | wallCategory | jumpableWallCategory
            enemy3.physicsBody?.contactTestBitMask = playerCategory | wallCategory | jumpableWallCategory
            
            enemy3.position.x = CGFloat(Double(levels[level].enemy3Positions[i][0]))
            enemy3.position.y = CGFloat(Double(levels[level].enemy3Positions[i][1]))
            
            enemy3.fillColor = UIColor.black
            
            enemy3s.append(enemy3)
            enemy3Directions.append(false)
            self.addChild(enemy3)
            enemy3Clock(i: i)
        }
        
        for i in 0..<levels[level].wallPositions.count {
            let wall = SKShapeNode(rectOf: CGSize(width: CGFloat(levels[level].wallSizes[i][0]), height: CGFloat(levels[level].wallSizes[i][1])))
            wall.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: CGFloat(levels[level].wallSizes[i][0]), height: CGFloat(levels[level].wallSizes[i][1])))
            
            wall.physicsBody?.affectedByGravity  = false
            wall.physicsBody?.isDynamic          = false
            wall.physicsBody?.pinned             = true
            wall.physicsBody?.allowsRotation     = false
            wall.physicsBody?.restitution        = 0
            wall.physicsBody?.friction           = 0
            
            wall.physicsBody?.categoryBitMask    = wallCategory
            wall.physicsBody?.collisionBitMask   = playerCategory
            wall.physicsBody?.contactTestBitMask = playerCategory | enemy1Category
            
            wall.position.x = CGFloat(Double(levels[level].wallPositions[i][0]))
            wall.position.y = CGFloat(Double(levels[level].wallPositions[i][1]))
            
            wall.fillColor = UIColor.black
            
            walls.append(wall)
            self.addChild(wall)
        }
        
        for i in 0..<levels[level].jumpableWallPositions.count {
            let jumpableWall = SKShapeNode(rectOf: CGSize(width: CGFloat(levels[level].jumpableWallSizes[i][0]), height: CGFloat(levels[level].jumpableWallSizes[i][1])))
            jumpableWall.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: CGFloat(levels[level].jumpableWallSizes[i][0]), height: CGFloat(levels[level].jumpableWallSizes[i][1])))
            
            jumpableWall.physicsBody?.affectedByGravity  = false
            jumpableWall.physicsBody?.isDynamic          = false
            jumpableWall.physicsBody?.pinned             = true
            jumpableWall.physicsBody?.allowsRotation     = false
            jumpableWall.physicsBody?.restitution        = 0
            jumpableWall.physicsBody?.friction           = 0
            
            jumpableWall.physicsBody?.categoryBitMask    = jumpableWallCategory
            jumpableWall.physicsBody?.collisionBitMask   = playerCategory
            jumpableWall.physicsBody?.contactTestBitMask = playerCategory | enemy1Category
            
            jumpableWall.position.x = CGFloat(Double(levels[level].jumpableWallPositions[i][0]))
            jumpableWall.position.y = CGFloat(Double(levels[level].jumpableWallPositions[i][1]))
            
            jumpableWall.fillColor = UIColor.black
            
            walls.append(jumpableWall)
            self.addChild(jumpableWall)
        }
        
        while numOfStars > 0 {
            let x = Double.random(in: -400...10000)
            let y = Double.random(in: -400...10000)
            let z = Double.random(in: 2000...10000)
            let body = SKShapeNode(circleOfRadius: Double(15000)/z)
            body.physicsBody = SKPhysicsBody()
            body.physicsBody?.affectedByGravity = false
            body.physicsBody?.categoryBitMask = 0
            body.physicsBody?.collisionBitMask = 0
            body.position = CGPoint(x: x, y: y)
            body.fillColor = UIColor.white
            body.zPosition = -4
            body.name = "star"
            body.isHidden = true
            stars.append(Star(distance: z, speedMultiplier: 1500/(z + 2000), body: body))
            originalLocationStars.append(body.position)
            self.addChild(body)
            numOfStars -= 1
        }
        
//        var centerPoint = SKShapeNode(circleOfRadius: 3)
//        centerPoint.fillColor = UIColor.red
//        centerPoint.position = blackHoleCenter
//        self.addChild(centerPoint)
        
        for i in 0..<levels[level].blackHoleCenters.count {
            var disk = AccretionDisk(starsAccretionDisk: [Star2](), blackHoleCenter: levels[level].blackHoleCenters[i], blackHoleA: levels[level].blackHoleAs[i], blackHoleB: levels[level].blackHoleBs[i],  numOfAccretionDiskStars: levels[level].numsOfAccretionDiskStars[i], angularVelocity: levels[level].angularVelocities[i])
            accretionDisks.append(disk)
            originalLocationBlackHoleCenters.append(disk.blackHoleCenter)
        }
        
        for i in 0..<levels[level].centerLocations.count {
            var center = SKShapeNode(circleOfRadius: levels[level].centerSizes[i])
            center.position = levels[level].centerLocations[i]
            print(center.position)
            center.fillColor = levels[level].centerColors[i]
            center.zPosition = -2
            centers.append(center)
            self.addChild(center)
            originalLocationCenters.append(center.position)
        }
        
        for accretionDisk in accretionDisks {
            spawnStar(disk: accretionDisk)
        }
    }
    
    func spawnStar(disk: AccretionDisk) {
        if (disk.numOfAccretionDiskStars > 0) {
            let body = SKShapeNode(circleOfRadius: 5)
            body.physicsBody = SKPhysicsBody(circleOfRadius: 5)
            body.physicsBody?.affectedByGravity = false
            body.physicsBody?.pinned = false
            //star.physicsBody?.isDynamic = true
            body.physicsBody?.categoryBitMask = 0
            body.physicsBody?.collisionBitMask = 0
            body.position = CGPoint(x: disk.blackHoleCenter.x, y: disk.blackHoleCenter.y + disk.blackHoleB)
            body.fillColor = UIColor.yellow
            body.zPosition = -3
            body.name = "star"
            body.isHidden = false
            body.physicsBody?.mass = 1
            var star = Star2(xVelocity: 0, yVelocity: 0, time: 0.0, body: body)
            disk.starsAccretionDisk.append(star)
            
            
            self.addChild(body)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.15, execute: {
                disk.numOfAccretionDiskStars -= 1
                self.spawnStar(disk: disk)
            })
        }
    }
    
//    func updateAccretionDisk() {
//        for star in starsAccretionDisk {
//            let timeChange = 0.00003
//            let xDistance = blackHoleCenter.x - star.body.position.x
//            let yDistance = blackHoleCenter.y - star.body.position.y
//            let distance = (pow(xDistance, 2) + pow(yDistance, 2)).squareRoot()
//            let gravity = blackHoleGravityMuliplier / pow(distance, 2)
//            let changeXVelocity = timeChange * gravity * xDistance/distance
//            let changeYVelocity = timeChange * gravity * yDistance/distance
//            star.body.position.x += star.xVelocity * timeChange
//            star.body.position.y += star.yVelocity * timeChange
//            star.xVelocity += changeXVelocity
//            star.yVelocity += changeYVelocity
////            if star as! AnyHashable == starsAccretionDisk[0] as! AnyHashable {
////                print(xDistance)
////                print(yDistance)
////            }
//        }
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.000003, execute: {
//            self.updateAccretionDisk()
//        })
//    }
    
    func initPlayer(fromBegining : Bool) {
        xVelocity = 10
        centerOfMass.physicsBody?.angularVelocity = 0
        centerOfMass2.physicsBody?.angularVelocity = 0
        centerOfMass3.physicsBody?.angularVelocity = 0
        centerOfMass4.physicsBody?.angularVelocity = 0
        
        centerOfMass.physicsBody?.allowsRotation = false
        centerOfMass2.physicsBody?.allowsRotation = false
        centerOfMass3.physicsBody?.allowsRotation = false
        centerOfMass4.physicsBody?.allowsRotation = false
        
        rightLeg.physicsBody?.velocity.dy = 0
        leftLeg.physicsBody?.velocity.dy = 0
        rightArm.physicsBody?.velocity.dy = 0
        leftArm.physicsBody?.velocity.dy = 0
        
        rightLeg.physicsBody?.affectedByGravity = false
        leftLeg.physicsBody?.affectedByGravity = false
        rightArm.physicsBody?.affectedByGravity = false
        leftLeg.physicsBody?.affectedByGravity = false
        
        if firstInit {
            player = SKShapeNode(rectOf: CGSize(width: CGFloat(playerWidth), height: CGFloat(playerHeight)))
            player.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: playerWidth, height: playerHeight))
        }
        
        player.physicsBody?.affectedByGravity  = true
        player.physicsBody?.isDynamic          = true
        player.physicsBody?.pinned             = false
        player.physicsBody?.allowsRotation     = false
        player.physicsBody?.restitution        = 0
        player.physicsBody?.linearDamping      = 0
        player.physicsBody?.friction           = 0
        player.physicsBody?.mass = 10000
        
        centerOfMass.zRotation = 0
        centerOfMass2.zRotation = 0
        centerOfMass3.zRotation = 0
        centerOfMass4.zRotation = 0
        torso.zRotation = 0
        
        if fromBegining {
            player.physicsBody?.angularVelocity = 0
            player.zRotation                       = 0
            player.physicsBody?.velocity.dx        = 0
            player.physicsBody?.velocity.dy        = 0
            player.position = CGPoint(x: playerStartX , y: playerStartY)
            rightStop()
            leftStop()
            
            cam.position = player.position
            
            //print("test1")
            for i in 0..<stars.count {
                //print("test2")
                stars[i].body.position = originalLocationStars[i]
            }
            for i in 0..<accretionDisks.count {
                accretionDisks[i].blackHoleCenter = originalLocationBlackHoleCenters[i]
            }
            for i in 0..<centers.count {
                centers[i].position = originalLocationCenters[i]
            }
        }
        
        player.physicsBody?.categoryBitMask    = playerCategory
        player.physicsBody?.collisionBitMask   = groundCategory | wallCategory | jumpableWallCategory
        player.physicsBody?.contactTestBitMask = groundCategory | enemy1Category | coinCategory
        
        if firstInit {
            self.addChild(player)
        }
        
        inAnimation = false
        jumpableWallAnimation = false
        
        if !gameStart {
            print("test")
        }
        
        player.isHidden = true
        if fromBegining {
            centerOfMass.isHidden = !centerOfMass.isHidden
            centerOfMass2.isHidden = !centerOfMass2.isHidden
            centerOfMass3.isHidden = !centerOfMass3.isHidden
            centerOfMass4.isHidden = !centerOfMass4.isHidden
            rightLeg.isHidden = !rightLeg.isHidden
            leftLeg.isHidden = !leftLeg.isHidden
            rightArm.isHidden = !rightArm.isHidden
            leftArm.isHidden = !leftArm.isHidden
            torso.isHidden = !torso.isHidden
            head.isHidden = !head.isHidden
            if firstInit && !gameStart{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                    self.respawnEffect(count: 1)
                    self.gameStart = false
                })
            }
            else {
                respawnEffect(count: 1)
            }
            if firstInit {
                firstInit = false
            }
        }
    }
    
    func respawnEffect(count : Int) {
        centerOfMass.isHidden = !centerOfMass.isHidden
        centerOfMass2.isHidden = !centerOfMass2.isHidden
        centerOfMass3.isHidden = !centerOfMass3.isHidden
        centerOfMass4.isHidden = !centerOfMass4.isHidden
        rightLeg.isHidden = !rightLeg.isHidden
        leftLeg.isHidden = !leftLeg.isHidden
        rightArm.isHidden = !rightArm.isHidden
        leftArm.isHidden = !leftArm.isHidden
        torso.isHidden = !torso.isHidden
        head.isHidden = !head.isHidden
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            if (count + 1 <= 13) {
                self.respawnEffect(count: count + 1)
            }
        })

    }
    
    func animate() {
        let timeToWait = 0.01
        DispatchQueue.main.asyncAfter(deadline: .now() + timeToWait, execute: {
            //self.centerOfMass2.physicsBody?.allowsRotation = false
            //print(self.centerOfMass.zRotation)
            self.animate()
            //print("test")
        })
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        //print(player.physicsBody?.mass)
        for center in centers {
            print(center.position)
        }
        
        for star in stars {
            if  star.body.position.x > cam.position.x - self.size.width / 2.0 &&  star.body.position.x < cam.position.x + self.size.width / 2.0 && star.body.position.y > cam.position.y - self.size.width / 2.0 &&  star.body.position.y < cam.position.y + self.size.width / 2.0 {
                star.body.isHidden = false
            }
            else {
                star.body.isHidden = true
            }
        }
        
        for accretionDisk in accretionDisks {
            for star in accretionDisk.starsAccretionDisk {
                if  star.body.position.x > cam.position.x - self.size.width / 2.0 &&  star.body.position.x < cam.position.x + self.size.width / 2.0 && star.body.position.y > cam.position.y - self.size.width / 2.0 &&  star.body.position.y < cam.position.y + self.size.width / 2.0 {
                    star.body.isHidden = false
                }
                else {
                    star.body.isHidden = true
                }
            }
        }
        
        /*for accretionDisk in accretionDisks {
            //print("test")
            for star in accretionDisk.starsAccretionDisk {
                var newX = star.body.position.x
                //let changeX = 1.0/(1.0 + abs(accretionDisk.blackHoleCenter.x - newX)/60.0) * 8.0
                let changeX = pow(30.0, abs(abs(abs(newX) - abs(accretionDisk.blackHoleCenter.x)) - accretionDisk.blackHoleA)/(accretionDisk.blackHoleA * 3))
                var topOrBottom = 1.0
                if star.body.position.y >= accretionDisk.blackHoleCenter.y {
                    newX -= changeX
                    topOrBottom = 1.0
                }
                else {
                    newX += changeX
                    topOrBottom = -1.0
                }
                if abs(abs(newX) - abs(accretionDisk.blackHoleCenter.x)) >= abs(accretionDisk.blackHoleA) {
                    newX += topOrBottom * changeX
                    topOrBottom *= -1
                    //print(true)
                }
                //print(newX)
                //print(star.body.position.x)
                star.body.position.x = newX
                star.body.position.y = (1 - pow(newX - accretionDisk.blackHoleCenter.x, 2)/pow(accretionDisk.blackHoleA, 2))
                star.body.position.y *= pow(accretionDisk.blackHoleB, 2)
                star.body.position.y = star.body.position.y.squareRoot() * topOrBottom
                star.body.position.y += accretionDisk.blackHoleCenter.y
                
                //print(star.body.position.y)
                
            }
        }*/
        
//        for star in stars {
//            if star.body.position.x > cam.position.x - 100.0 / 2.0 && star.body.position.x < cam.position.x + 100.0 / 2.0 && star.body.position.y > cam.position.y - 100.0 / 2.0 && star.body.position.y < cam.position.y + 100.0 / 2.0 {
//                star.body.isHidden = false
//                //print(star.body.position.x > cam.position.x - 100.0 / 2.0)
//            }
//            else {
//                star.body.isHidden = true
//            }
//        }
        
        
        positionLabel.text = "x: \(Int(cam.position.x.rounded())), y: \(Int(cam.position.y.rounded()))"
        
        centerPoint.zPosition = 100
        
//        print(player.physicsBody?.velocity.dx)
//        print(player.physicsBody?.velocity.dy)
        
//        for star in stars {
//            if self.nodes(at: star.body.position).count >= 2 /*&& self.nodes(at: star.body.position)[self.nodes(at: star.body.position).count - 1].name == "star"*/ {
//                star.body.isHidden = true
//            }
//            else {
//                star.body.isHidden = false
//            }
//        }
        
        if (moveRight || moveLeft) && !inAnimation && canMove {
            var multiplier = 0
            if moveRight && (player.physicsBody?.velocity.dx)! < CGFloat(runMaxSpeed) {
                multiplier = 1
                if (player.physicsBody?.velocity.dx)!/abs((player.physicsBody?.velocity.dx)!) == -1 {
                    player.physicsBody?.velocity.dx = 0
                }
            }
            else if moveLeft && (player.physicsBody?.velocity.dx)! > CGFloat(-runMaxSpeed) {
                multiplier = -1
                if (player.physicsBody?.velocity.dx)!/abs((player.physicsBody?.velocity.dx)!) == 1 {
                    player.physicsBody?.velocity.dx = 0
                }
            }
            player?.physicsBody?.applyForce(CGVector(dx: CGFloat(multiplier * runAcceleration) * (player.physicsBody?.mass ?? 1), dy: 0))
        }
        else if ((player.physicsBody?.velocity.dx)! > 5 && touchingGround) {
            player?.physicsBody?.applyForce(CGVector(dx: CGFloat(-1 * runAcceleration) * (player.physicsBody?.mass ?? 1), dy: 0))
        }
        else if ((player.physicsBody?.velocity.dx)! < -5 && touchingGround) {
            player?.physicsBody?.applyForce(CGVector(dx: CGFloat(runAcceleration) * (player.physicsBody?.mass ?? 1), dy: 0))
        }

        if !inspectMode && (!inAnimation || jumpableWallAnimation) && player.position.y > -1000 {
            if abs(player.position.x - cam.position.x) >= CGFloat(camInitiateFollowX) {
                for star in stars {
                    star.body.physicsBody?.velocity.dx = -star.speedMultiplier * (player.physicsBody?.velocity.dx)!
                }
                for accretionDisk in accretionDisks {
                    accretionDisk.blackHoleCenter.x -= levels[level].centerZDistance/10000.0 * (player.physicsBody?.velocity.dx)! * (1.0/60.0)
                }
                for center in centers {
                    center.position.x -= levels[level].centerZDistance/10000.0 * (player.physicsBody?.velocity.dx)! * (1.0/60.0)
                }
                if player.position.x > cam.position.x {
                    let change = player.position.x - cam.position.x - CGFloat(camInitiateFollowX)
                    cam.position.x += change
                    for star in stars {
                        star.body.position.x += change
                    }
                    for accretionDisk in accretionDisks {
                        accretionDisk.blackHoleCenter.x += change
                    }
                    for center in centers {
                        center.position.x += change
                    }
                }
                else {
                    let change = player.position.x - cam.position.x + CGFloat(camInitiateFollowX)
                    cam.position.x += change
                    for star in stars {
                        star.body.position.x += change
                    }
                    for accretionDisk in accretionDisks {
                        accretionDisk.blackHoleCenter.x += change
                    }
                    for center in centers {
                        center.position.x += change
                    }
                }
            }
            else {
                for star in stars {
                    star.body.physicsBody?.velocity.dx = 0
                }
            }
            for center in centers {
                print(center.position)
            }
            if abs(player.position.y - cam.position.y) >= CGFloat(camInitiateFollowY) {
                print("test12")
                for star in stars {
                    star.body.physicsBody?.velocity.dy = -star.speedMultiplier * (player.physicsBody?.velocity.dy)!
                }
                for accretionDisk in accretionDisks {
                    accretionDisk.blackHoleCenter.y -= levels[level].centerZDistance/10000.0 * (player.physicsBody?.velocity.dy)! * (1.0/60.0)
                }
                for center in centers {
                    center.position.y -= levels[level].centerZDistance/10000.0 * (player.physicsBody?.velocity.dy)! * (1.0/60.0)
                }
                if player.position.y > cam.position.y {
                    let change = player.position.y - cam.position.y - CGFloat(camInitiateFollowY)
                    cam.position.y += change
                    for star in stars {
                        star.body.position.y += change
                    }
                    for accretionDisk in accretionDisks {
                        accretionDisk.blackHoleCenter.y += change
                    }
                    for center in centers {
                        center.position.y += change
                    }
                }
                else {
                    let change = player.position.y - cam.position.y + CGFloat(camInitiateFollowY)
                    cam.position.y += change
                    for star in stars {
                        star.body.position.y += change
                    }
                    for accretionDisk in accretionDisks {
                        accretionDisk.blackHoleCenter.y += change
                    }
                    for center in centers {
                        center.position.y += change
                    }
                }
            }
            else {
                for star in stars {
                    star.body.physicsBody?.velocity.dy = 0
                }
            }
        }
        else if inAnimation && !jumpableWallAnimation {
            if (player.position.y <= initialPositionYAnimation - CGFloat(2000)) {
                lives -= 1
                if lives > 0 {
                    initPlayer(fromBegining: true)
                    inAnimation = false
                }
                if (lives == 0) {
                    end(won: false)
                }
                if lives != 0 {
                    livesLabel.text = "Lives: \(lives)"
                }
            }
        }
        if (touchingGround && !inAnimation) {
            if (rightLeg.zRotation > maxAngle + 0.2 || rightLeg.zRotation < -maxAngle - 0.2) {
                centerOfMass.zRotation = maxAngle - 0.1
                centerOfMass2.zRotation = -centerOfMass.zRotation
                centerOfMass3.zRotation = centerOfMass.zRotation * 1.5
                centerOfMass4.zRotation = -centerOfMass.zRotation * 1.5
                direction = 1
            }
        }
        
        if ((player.physicsBody?.velocity.dx)! > 5 || (player.physicsBody?.velocity.dx)! < -5) {
            xVelocity = (player.physicsBody?.velocity.dx)!
        }
        //print(xVelocity)
        
        if (!inAnimation && touchingGround) {
            if (Double(centerOfMass.physicsBody?.node?.zRotation ?? 0) > maxAngle && direction == 1) {
                direction = -1
            }
            else if (Double(centerOfMass.physicsBody?.node?.zRotation ?? 0) < -maxAngle && direction == -1) {
                direction = 1
            }
            
            let newPosition = centerOfMass.zRotation + (abs((player.physicsBody?.velocity.dx)!)) * 1.5 / 10000.0
            
            //need to fix so not animating based on framerate!!
            centerOfMass.zRotation = CGFloat(direction) * newPosition
            centerOfMass2.zRotation = -CGFloat(direction) * newPosition
            centerOfMass3.zRotation = (CGFloat(direction) * newPosition) * 1.5
            centerOfMass4.zRotation = (-CGFloat(direction) * newPosition) * 1.5
        }
        else if (!touchingGround && !jumpableWallAnimation) {
            let newPosition = ((player.physicsBody?.velocity.dx)!) / 1000.0
                centerOfMass.zRotation = newPosition
                centerOfMass2.zRotation = -newPosition
                centerOfMass3.zRotation = newPosition
                centerOfMass4.zRotation = -newPosition
        }
        
//
//        else if (!touchingGround && !jumpableWallAnimation) {
//            if (xVelocity > 300.0) {
//                centerOfMass.zRotation = Double.pi / 6.0
//                centerOfMass2.zRotation = -Double.pi / 3.0
//                centerOfMass3.zRotation = Double.pi * 2 / 3.0
//                centerOfMass4.zRotation = -centerOfMass.zRotation
//               centerOfMass3.zRotation = Double.pi / 3.0
//                centerOfMass4.zRotation = -Double.pi / 3.0
//            }
//            else if (xVelocity < -300.0) {
//                centerOfMass.zRotation = Double.pi / 3.0
//                centerOfMass2.zRotation = -Double.pi / 6.0
//               centerOfMass3.zRotation = -Double.pi / 3.0
//                centerOfMass4.zRotation = Double.pi / 3.0
//                centerOfMass3.zRotation = -centerOfMass2.zRotation
//                centerOfMass4.zRotation = -Double.pi * 2 / 3.0
//            }
//
//            centerOfMass.zRotation = 0.65
//            centerOfMass2.zRotation = -centerOfMass.zRotation
//            centerOfMass3.zRotation = centerOfMass.zRotation * 1.5
//           centerOfMass4.zRotation = -centerOfMass.zRotation * 1.5
//        }
        else if (jumpableWallAnimation) {
            if (xVelocity > 0) {
                centerOfMass.zRotation = Double.pi / 3.0
                centerOfMass2.zRotation = Double.pi / 6.0
                centerOfMass3.zRotation = Double.pi / 2.0
                centerOfMass4.zRotation = -0.3
            }
            else {
                centerOfMass.zRotation = -Double.pi / 6.0
                centerOfMass2.zRotation = -Double.pi / 3.0
                centerOfMass3.zRotation = 0.3
                centerOfMass4.zRotation = -Double.pi / 2.0
            }
        }
        
        if (inAnimation && !jumpableWallAnimation) {
            centerOfMass.zRotation = COMAngle + player.zRotation
            centerOfMass2.zRotation = COM2Angle + player.zRotation
            centerOfMass3.zRotation = COM3Angle + player.zRotation
            centerOfMass4.zRotation = COM4Angle + player.zRotation
            torso.zRotation = player.zRotation
        }
        
        if jumpableWallAnimation && touchingGround {
            initPlayer(fromBegining: false)
        }
        
        if (jumpAnimation) {
            centerOfMass.zRotation = 0
            centerOfMass2.zRotation = 0
            centerOfMass3.zRotation = 0
            centerOfMass4.zRotation = 0
        }
        
        centerOfMass.zPosition = 10
        rightLeg.zPosition = 10
        
        for i in 0..<enemy2s.count {
            let enemy2 = enemy2s[i]
            if abs(Double(levels[level].enemy2Positions[i][0]) - enemy2.position.x) > Double(levels[level].enemy2Bounds[i]) {
                let currentDirection = -abs(Double(levels[level].enemy2Positions[i][0]) - enemy2.position.x)/(Double(levels[level].enemy2Positions[i][0]) - enemy2.position.x)
                print(Double(levels[level].enemy2Positions[i][0]) - enemy2.position.x)
                enemy2.position.x += 5 * -currentDirection
                enemy2.physicsBody?.velocity.dx *= -1
            }
        }
        
        for i in 0..<enemy3s.count {
            var direction = 1
            if (!enemy3Directions[i]) {
                direction = -1
            }
            enemy3s[i].physicsBody?.applyForce(CGVector(dx: CGFloat(direction) * CGFloat(enemy3s[i].physicsBody!.mass) * CGFloat(enemy3Acceleration), dy: 0))
        }
        
        //placement after center movement matters!
        for accretionDisk in accretionDisks {
            for star in accretionDisk.starsAccretionDisk {
                star.body.position.x = accretionDisk.blackHoleA * sin(accretionDisk.angularVelocity * star.time) + accretionDisk.blackHoleCenter.x
                star.body.position.y = accretionDisk.blackHoleB * cos(accretionDisk.angularVelocity  * star.time) + accretionDisk.blackHoleCenter.y
                star.time += 1.0/60.0
                if star.body.position.y > accretionDisk.blackHoleCenter.y {
                    star.body.zPosition = -3
                }
                else {
                    star.body.zPosition = -1
                }
            }
        }
        
        for center in centers {
            print(originalLocationCenters[0])
            print(center.position)
        }
        
        for star in stars {
            if player.position.y < -1000 {
                star.body.physicsBody?.velocity.dx = 0.0
                star.body.physicsBody?.velocity.dy = 0.0
            }
        }
        
        
//        print(head.zRotation)
//        print(rightLeg.zRotation)

//        centerOfMass?.physicsBody?.angularVelocity = (CGFloat(direction) * abs((player.physicsBody?.velocity.dx)!) / CGFloat(legLength)) * angularVelocityFactor
//        centerOfMass2?.physicsBody?.angularVelocity = -centerOfMass.physicsBody!.angularVelocity
//        centerOfMass3?.physicsBody?.angularVelocity = centerOfMass.physicsBody!.angularVelocity
//        centerOfMass4?.physicsBody?.angularVelocity = centerOfMass2.physicsBody!.angularVelocity
        
//        centerOfMass.physicsBody?.allowsRotation = false
//        centerOfMass2.physicsBody?.allowsRotation = false
//        centerOfMass3.physicsBody?.allowsRotation = false
//        centerOfMass4.physicsBody?.allowsRotation = false
        
        //centerOfMass.physicsBody?.node?.zRotation = 2
        
        //print(centerOfMass.physicsBody?.angularVelocity)
        
//        let distanceX = rightLeg.position.x - legCenterPoint.x
//        let distanceY = rightLeg.position.y - legCenterPoint.y
//        let distanceXArm = rightArm.position.x - armCenterPoint.x
//        let distanceYArm = rightArm.position.y - armCenterPoint.y
//
//        legCenterPoint = player.position
//        armCenterPoint = CGPoint(x: player.position.x, y: player.position.y + CGFloat(playerHeight/4))
        
        //centerOfMass.position.x = legCenterPoint.x
        //centerOfMass.position.y = legCenterPoint.y
//        rightLeg.position.x = centerOfMass.position.x + distanceX
//        rightLeg.position.y = centerOfMass.position.y + distanceY
        
        //centerOfMass2.position.x = legCenterPoint.x
        //centerOfMass2.position.y = legCenterPoint.y
//        leftLeg.position.x = centerOfMass.position.x - distanceX
//        leftLeg.position.y = centerOfMass.position.y + distanceY
//
//        //centerOfMass3.position.x = armCenterPoint.x
//        //centerOfMass3.position.y = armCenterPoint.y
//        rightArm.position.x = centerOfMass3.position.x + distanceXArm
//        rightArm.position.y = centerOfMass3.position.y + distanceYArm
//
//        //centerOfMass4.position.x = armCenterPoint.x
//        //centerOfMass4.position.y = armCenterPoint.y
//        leftArm.position.x = centerOfMass3.position.x - distanceXArm
//        leftArm.position.y = centerOfMass3.position.y + distanceYArm
        
        //try to better understand why the position AND angular velocity must be updated to account for delay?
        
//        rightArm.physicsBody?.applyForce(CGVector(dx: 0, dy: 9.81 * rightArm.physicsBody!.mass))
//        leftArm.physicsBody?.applyForce(CGVector(dx: 0, dy: 9.81 * leftArm.physicsBody!.mass))
        
        //rightArm.zRotation = rightLeg.zRotation// * armMultiplier
        //leftArm.zRotation = leftLeg.zRotation //* armMultiplier
        
//        torso.position.x = player.position.x
//        torso.position.y = player.position.y + CGFloat(legLength) * 0.375
//        head.position.x = player.position.x
//        head.position.y = player.position.y + CGFloat(legLength) * 0.75

        
        coinsLabel.position.x        = cam.position.x - 500
        coinsLabel.position.y        = cam.position.y + 250
        livesLabel.position.x        = cam.position.x - 500
        livesLabel.position.y        = cam.position.y + 200
        inspectOutlet.position.x     = cam.position.x + 500
        inspectOutlet.position.y     = cam.position.y + 250
        positionLabel.position.x     = cam.position.x - 500
        positionLabel.position.y     = cam.position.y + 150
        teleportOutlet.position.x    = cam.position.x - 500
        teleportOutlet.position.y    = cam.position.y + 100
        rightButtonOutlet.position.x = cam.position.x - 370
        rightButtonOutlet.position.y = cam.position.y - 250
        leftButtonOutlet.position.x  = cam.position.x - 570
        leftButtonOutlet.position.y  = cam.position.y - 250
        largeJumpOutlet.position.x   = cam.position.x + 500
        largeJumpOutlet.position.y   = cam.position.y - 250
        //centerCrossHair.position.x   = cam.position.x
        //centerCrossHair.position.y   = cam.position.y
        centerPoint.position.x       = cam.position.x
        centerPoint.position.y       = cam.position.y
        
        if (player.position.y <= -3000) {
            lives -= 1
            if lives > 0 {
                initPlayer(fromBegining: true)
            }
            
            if (lives == 0) {
                end(won: false)
            }
            if (lives != 0) {
                livesLabel.text = "Lives: \(lives)"
            }
        }
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        var player       : SKShapeNode!
        var ground       : SKShapeNode!
        var enemy1       : SKShapeNode!
        var enemy2       : SKShapeNode!
        var enemy3       : SKShapeNode!
        var wall         : SKShapeNode!
        var coin         : SKShapeNode!
        var jumpableWall : SKShapeNode!
        var levelEnd     : SKShapeNode!
        if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == groundCategory {
            player = contact.bodyA.node as? SKShapeNode
            ground = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == groundCategory && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            ground = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy1Category && contact.bodyB.categoryBitMask == wallCategory {
            enemy1 = contact.bodyA.node as? SKShapeNode
            wall = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == wallCategory && contact.bodyB.categoryBitMask == enemy1Category {
            enemy1 = contact.bodyB.node as? SKShapeNode
            wall = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == enemy1Category {
            player = contact.bodyA.node as? SKShapeNode
            enemy1 = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy1Category && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            enemy1 = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == enemy2Category {
            player = contact.bodyA.node as? SKShapeNode
            enemy2 = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy2Category && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            enemy2 = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == coinCategory {
            player = contact.bodyA.node as? SKShapeNode
            coin = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == coinCategory && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            coin = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == jumpableWallCategory {
            player = contact.bodyA.node as? SKShapeNode
            jumpableWall = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == jumpableWallCategory && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            jumpableWall = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == levelEndCategory {
            player = contact.bodyA.node as? SKShapeNode
            levelEnd = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == levelEndCategory && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            levelEnd = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy2Category && contact.bodyB.categoryBitMask == groundCategory {
            enemy2 = contact.bodyA.node as? SKShapeNode
            ground = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == groundCategory && contact.bodyB.categoryBitMask == enemy2Category {
            enemy2 = contact.bodyB.node as? SKShapeNode
            ground = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy3Category && contact.bodyB.categoryBitMask == wallCategory {
            enemy3 = contact.bodyA.node as? SKShapeNode
            wall = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == wallCategory && contact.bodyB.categoryBitMask == enemy3Category {
            enemy3 = contact.bodyB.node as? SKShapeNode
            wall = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy3Category && contact.bodyB.categoryBitMask == jumpableWallCategory {
            enemy3 = contact.bodyA.node as? SKShapeNode
            jumpableWall = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy3Category && contact.bodyB.categoryBitMask == jumpableWallCategory {
            enemy3 = contact.bodyB.node as? SKShapeNode
            jumpableWall = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == enemy3Category {
            player = contact.bodyA.node as? SKShapeNode
            enemy3 = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == enemy3Category && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            enemy3 = contact.bodyA.node as? SKShapeNode
        }
        
        if player != nil && ground != nil {
            jumpNum = 0
            touchingGround = true
        }
        else if enemy1 != nil && wall != nil {
            enemy1.physicsBody?.velocity.dx *= -1
        }
        else if enemy2 != nil && ground != nil {
            enemy2.physicsBody?.velocity.dy = CGFloat(enemy2JumpSpeed)
        }
        else if player != nil && enemy1 != nil {
            if Int(player.position.y - enemy1.position.y) >= (playerHeight + enemy1Size[1])/2 - 10 {
                player.physicsBody?.velocity.dy = CGFloat(jumpSpeed)
                enemy1.physicsBody?.velocity.dy = 0
                enemy1.physicsBody?.velocity.dx = 0
                let texture = self.view?.texture(from: enemy1)
                let enemy1Sprite = SKSpriteNode(texture: texture)
                enemy1Sprite.position = enemy1.position
                enemy1.removeFromParent()
                self.addChild(enemy1Sprite)
                
                let duration = 0.5
                enemy1Sprite.run(SKAction.moveTo(y: enemy1Sprite.position.y - enemy1Sprite.frame.height / 2, duration: TimeInterval(duration)))
                enemy1Sprite.run(SKAction.sequence([SKAction.resize(toWidth: enemy1.frame.width * 1.25, height: 0, duration: TimeInterval(duration)), SKAction.removeFromParent()]))
            }
            else {
                dieAnimation()
            }
        }
        else if player != nil && enemy2 != nil {
            if Int(player.position.y - enemy2.position.y) >= (playerHeight + enemy2Size[1])/2 - 10 {
                player.physicsBody?.velocity.dy = CGFloat(jumpSpeed)
                enemy2.physicsBody?.velocity.dy = 0
                enemy2.physicsBody?.velocity.dx = 0
                let texture = self.view?.texture(from: enemy2)
                let enemy2Sprite = SKSpriteNode(texture: texture)
                enemy2Sprite.position = enemy2.position
                enemy2.removeFromParent()
                self.addChild(enemy2Sprite)
                
                let duration = 0.5
                enemy2Sprite.run(SKAction.moveTo(y: enemy2Sprite.position.y - enemy2Sprite.frame.height / 2, duration: TimeInterval(duration)))
                enemy2Sprite.run(SKAction.sequence([SKAction.resize(toWidth: enemy2.frame.width * 1.25, height: 0, duration: TimeInterval(duration)), SKAction.removeFromParent()]))
            }
            else {
                dieAnimation()
            }
        }
        else if player != nil && enemy3 != nil {
            if Int(player.position.y - enemy3.position.y) >= (playerHeight + enemy3Size[1])/2 - 10 {
                player.physicsBody?.velocity.dy = CGFloat(jumpSpeed)
                enemy3.physicsBody?.velocity.dy = 0
                enemy3.physicsBody?.velocity.dx = 0
                let texture = self.view?.texture(from: enemy3)
                let enemy3Sprite = SKSpriteNode(texture: texture)
                enemy3Sprite.position = enemy3.position
                enemy3.removeFromParent()
                self.addChild(enemy3Sprite)
                
                let duration = 0.5
                enemy3Sprite.run(SKAction.moveTo(y: enemy3Sprite.position.y - enemy3Sprite.frame.height / 2, duration: TimeInterval(duration)))
                enemy3Sprite.run(SKAction.sequence([SKAction.resize(toWidth: enemy3.frame.width * 1.25, height: 0, duration: TimeInterval(duration)), SKAction.removeFromParent()]))
            }
            else {
                dieAnimation()
            }
        }
        else if coin != nil && player != nil {
            totalCoins += 1
            coinsLabel.text = "Coins: \(totalCoins)"
            coin.removeFromParent()
        }
        else if player != nil && jumpableWall != nil {
            jumpNum = maxJumps - 1
            jumpableWallAnimation = true
            inAnimation = true
            player.physicsBody?.velocity.dx = 0
            player.physicsBody?.velocity.dy = CGFloat(-wallSlideVelocity)
            player.physicsBody?.linearDamping = 0.2
            player.physicsBody?.affectedByGravity = false
        }
        else if player != nil && levelEnd != nil {
            end(won: true)
        }
//        else if enemy3 != nil && (wall != nil || jumpableWall != nil) {
//            var index = -1
//            for i in 0..<enemy3s.count {
//                if enemy3s[i] == enemy3 {
//                    index = i
//                    break;
//                }
//            }
//            DispatchQueue.main.asyncAfter(deadline: .now() + enemy3WaitTime, execute:{
//                self.enemy3Directions[index] = !self.enemy3Directions[index]
//            })
//        }
    }
    
    func enemy3Clock(i: Int) {
        DispatchQueue.main.asyncAfter(deadline: .now() + enemy3WaitTimes[i], execute:{
            self.enemy3Directions[i] = !self.enemy3Directions[i]
            self.enemy3Clock(i: i)
        })
    }
    
    func end(won: Bool) {
        WinTracker.won = won
        if won {
            LevelTracker.level += 1
        }
        var gameScene : EndScene!
        if let scene = GKScene(fileNamed: "EndScene") {
            gameScene = scene.rootNode as? EndScene
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
    
    func didEnd(_ contact: SKPhysicsContact) {
        var player       : SKShapeNode!
        var jumpableWall : SKShapeNode!
        var ground       : SKShapeNode!
        if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == jumpableWallCategory {
            player = contact.bodyA.node as? SKShapeNode
            jumpableWall = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == jumpableWallCategory && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            jumpableWall = contact.bodyA.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == playerCategory && contact.bodyB.categoryBitMask == groundCategory {
            player = contact.bodyA.node as? SKShapeNode
            ground = contact.bodyB.node as? SKShapeNode
        }
        else if contact.bodyA.categoryBitMask == groundCategory && contact.bodyB.categoryBitMask == playerCategory {
            player = contact.bodyB.node as? SKShapeNode
            ground = contact.bodyA.node as? SKShapeNode
        }
        
        if (player != nil && jumpableWall != nil && jumpableWallAnimation) {
            initPlayer(fromBegining: false)
            jumpableWallAnimation = false
            inAnimation = false
        }
        else if (player != nil && ground != nil) {
            touchingGround = false
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        var right = false
//        var left = false
        for touch in touches {
            lastTouchX = touch.location(in: self).x
            lastTouchY = touch.location(in: self).y
            if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "inspectOutlet" {
                inspectAction()
            }
            else if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "teleportOutlet" {
                teleportAction()
            }
            else if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "rightButtonOutlet" {
                self.touches[touch] = "rightButtonOutlet"
                rightAction()
                //right = true
            }
            else if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "leftButtonOutlet" {
                self.touches[touch] = "leftButtonOutlet"
                leftAction()
                //left = true
            }
            else if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "smallJumpOutlet" {
                jumpAction()
            }
            else if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "largeJumpOutlet" {
                jumpAction()
            }
        }
//        if !right {
//            print("testing")
//            rightStop()
//        }
//        else if !left {
//            print("tested")
//            leftStop()
//        }
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        var right = false
        var left = false
        for touch in touches {
            
            if inspectMode {
                cam.position.x += lastTouchX - touch.location(in: self).x
                cam.position.y += lastTouchY - touch.location(in: self).y
            }
            
            if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "leftButtonOutlet" {
                left = true
                leftAction()
            }
            if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "rightButtonOutlet" {
                right = true
                //print("test")
                rightAction()
            }
            
            lastTouchX = touch.location(in: self).x
            lastTouchY = touch.location(in: self).y
        }
        if !left {
            leftStop()
        }
        if !right {
            rightStop()
            //print("test")
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("test")
//        for touch in touches {
//            if self.touches[touch] != nil && self.touches[touch] == "rightButtonOutlet" {
//                rightStop()
//                self.touches[touch] = nil
//            }
//            else if self.touches[touch] != nil && self.touches[touch] == "leftButtonOutlet" {
//                leftStop()
//                self.touches[touch] = nil
//            }
//            if self.touches[touch] == nil &&
            
            //closure practice
//            if self.touches.contains(where: {$0.key == touch}) {
//                if (dict.touch)
//            }
            //else if self.touches.contains(where: $0.value == "leftButtonOutlet")
//            if self.nodes(at: touch.location(in: self)).count == 0 || self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name != "largeJumpOutlet" {
//                leftStop()
//                rightStop()
//            }
//        }
        

        for touch in touches {
            if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "leftButtonOutlet" {
                leftStop()
            }
            else if self.nodes(at: touch.location(in: self)).count > 0 && self.nodes(at: touch.location(in: self))[self.nodes(at: touch.location(in: self)).count - 1].name == "rightButtonOutlet" {
                rightStop()
            }
        }
    }
    
    func rightAction() {
        if !inAnimation {
            moveRight = true
        }
    }
    
    func jumpAction() {
        if !inAnimation {
            if jumpNum < maxJumps {
                player.physicsBody?.velocity.dy = CGFloat(jumpSpeed)
                jumpNum += 1
                jumpAnimation = true
                let timeToWait = 0.175
                DispatchQueue.main.asyncAfter(deadline: .now() + timeToWait, execute: {
                    self.jumpAnimation = false
                })
            }
        }
        else if inAnimation && jumpableWallAnimation {
            player.physicsBody?.velocity.dy = CGFloat(jumpSpeed)
            if xVelocity > 0 {
                player?.physicsBody?.velocity.dx = -CGFloat(horizontalHopVelocity)
            }
            else {
                player.physicsBody?.velocity.dx = CGFloat(horizontalHopVelocity)
            }
            canMove = false
            initPlayer(fromBegining: false)
            jumpableWallAnimation = false
            inAnimation = false
            //lastSpeed = player.physicsBody?.velocity.dx
            DispatchQueue.main.asyncAfter(deadline: .now() + timeToWait, execute: {
                self.canMove = true
            })
        }
    }
    
    func leftAction() {
        if !inAnimation {
            moveLeft = true
        }
    }
    
    func rightStop() {
        moveRight = false
    }
    
    func leftStop() {
        moveLeft = false
    }
    
    func inspectAction() {
        if inspectMode == false {
            inspectInitialPositionX = Int(cam.position.x)
            inspectInitialPositionY = Int(cam.position.y)
            inspectMode = true
            inspectOutlet.color = UIColor.green
            teleportOutlet.isHidden = false
            positionLabel.isHidden  = false
            //centerCrossHair.isHidden = false
            centerPoint.isHidden = false
        }
        else {
            inspectMode = false
            inspectOutlet.color = UIColor.systemBlue
            teleportOutlet.isHidden = true
            positionLabel.isHidden  = true
            //centerCrossHair.isHidden = true
            centerPoint.isHidden = true
        }
    }
    
    func teleportAction() {
        player.position.x = cam.position.x
        player.position.y = cam.position.y
        player.physicsBody?.velocity.dx = 0
        player.physicsBody?.velocity.dy = 0
    }
    
    func dieAnimation() {
        inAnimation = true
        initialPositionYAnimation = player.position.y
        player.physicsBody?.collisionBitMask   = 0
        player.physicsBody?.contactTestBitMask = 0
        player.physicsBody?.categoryBitMask    = 0
        player.physicsBody?.angularDamping     = 0
        player.physicsBody?.velocity.dy        = 700
        player.physicsBody?.velocity.dx        = 0
        player.physicsBody?.angularVelocity    = 4
        
        COMAngle = Double(centerOfMass.zRotation)
        COM2Angle = Double(centerOfMass2.zRotation)
        COM3Angle = Double(centerOfMass3.zRotation)
        COM4Angle = Double(centerOfMass4.zRotation)
        
        for star in stars {
            star.body.physicsBody?.velocity.dx = 0
            star.body.physicsBody?.velocity.dy = 0
        }
        
//        centerOfMass.physicsBody?.allowsRotation = true
//        centerOfMass2.physicsBody?.allowsRotation = true
//        centerOfMass3.physicsBody?.allowsRotation = true
//        centerOfMass4.physicsBody?.allowsRotation = true
//        rightLeg.physicsBody?.allowsRotation = true
//        leftLeg.physicsBody?.allowsRotation = true
//        rightArm.physicsBody?.allowsRotation = true
//        leftArm.physicsBody?.allowsRotation = true
        
//        centerOfMass.physicsBody?.angularVelocity = player.physicsBody!.angularVelocity
//        centerOfMass2.physicsBody?.angularVelocity = player.physicsBody!.angularVelocity
//        centerOfMass3.physicsBody?.angularVelocity = player.physicsBody!.angularVelocity
//        centerOfMass4.physicsBody?.angularVelocity = player.physicsBody!.angularVelocity
        
//        rightLeg.physicsBody?.velocity.dy = 700.0
//        leftLeg.physicsBody?.velocity.dy = 700.0
//        rightArm.physicsBody?.velocity.dy = 700.0
//        leftArm.physicsBody?.velocity.dy = 700.0
        
//        rightLeg.physicsBody?.affectedByGravity = true
//        leftLeg.physicsBody?.affectedByGravity = true
//        rightArm.physicsBody?.affectedByGravity = true
//        leftLeg.physicsBody?.affectedByGravity = true
    }
}
