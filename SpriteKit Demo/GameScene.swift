//
//  GameScene.swift
//  SpriteKit Demo
//
//  Created by Gail Lee on 11/15/17.
//  Copyright © 2017 Gail Lee. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let myFirstNode = SKNode()
    let myFirstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200.0, height: 200.0))
    let myFirstTextureSpriteNode = SKSpriteNode(imageNamed: "Spaceship")
    let blueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 150.0, height: 150.0))
    
    // get called as soon as scene appears
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        
        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
//        myFirstSpriteNode.anchorPoint = CGPoint(x: 0.0, y: 0.0)
        myFirstSpriteNode.anchorPoint = CGPoint.zero
        addChild(myFirstSpriteNode)
        
        myFirstTextureSpriteNode.zPosition = 2
        myFirstTextureSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        myFirstTextureSpriteNode.position = CGPoint(x: myFirstSpriteNode.size.width / 2, y: myFirstSpriteNode.size.height / 2)
        myFirstSpriteNode.addChild(myFirstTextureSpriteNode)
        
        blueBox.zPosition = 1
        blueBox.position = CGPoint(x: myFirstSpriteNode.size.width / 2, y: myFirstSpriteNode.size.height / 2)
        myFirstSpriteNode.addChild(blueBox)
    }
}
