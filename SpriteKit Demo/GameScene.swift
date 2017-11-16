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
        //        myFirstTextureSpriteNode.position = CGPoint(x: myFirstSpriteNode.size.width / 2, y: myFirstSpriteNode.size.height / 2)
        myFirstSpriteNode.addChild(myFirstTextureSpriteNode)
        
        blueBox.zPosition = 1
        blueBox.position = CGPoint(x: myFirstSpriteNode.size.width / 2, y: myFirstSpriteNode.size.height / 2)
        myFirstSpriteNode.addChild(blueBox)
        
        physicsWorld.gravity = CGVector(dx: -1.0, dy: -2.0)
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        myFirstTextureSpriteNode.physicsBody = SKPhysicsBody(circleOfRadius: myFirstTextureSpriteNode.size.width/2)
        myFirstTextureSpriteNode.physicsBody!.allowsRotation = false
        myFirstTextureSpriteNode.physicsBody!.restitution = 1.0
        
        blueBox.physicsBody = SKPhysicsBody(rectangleOf: blueBox.size)
        blueBox.physicsBody!.restitution = 1.0
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // move picture to certain position for 2 seconds
        //        myFirstTextureSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0))
        //        blueBox.run(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0))
        
        /*
         myFirstTextureSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0)) {
         self.myFirstTextureSpriteNode.position = CGPoint.zero
         }
         
         if !blueBox.hasActions() {
         //blueBox.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0)))
         
         /* simulatneous actions*/
         //            blueBox.run(SKAction.group([SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0), SKAction.scale(by: 0.5, duration: 2.0)]))
         
         /* run action by one by one*/
         blueBox.run(SKAction.sequence([SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0), SKAction.scale(by: 0.5, duration: 2.0)]))
         } else{
         blueBox.removeAllActions()
         }
         */
        
        if let _ = myFirstTextureSpriteNode.action(forKey: "Rotation") {
            myFirstTextureSpriteNode.removeAction(forKey: "Rotation")
        }else{
            myFirstTextureSpriteNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 2.0)), withKey: "Rotation")
        }
    }
}
