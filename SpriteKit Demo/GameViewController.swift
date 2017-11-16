//
//  GameViewController.swift
//  SpriteKit Demo
//
//  Created by Gail Lee on 11/15/17.
//  Copyright © 2017 Gail Lee. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            if let scene = SKScene(fileNamed: "MyFirstTileMapScene"){
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
                view.ignoresSiblingOrder = true
                
                // Debug information
                view.showsFPS = true
                view.showsNodeCount = true
                view.showsPhysics = true
            }else{
                
            }
        }
    }
}
