//
//  Player.swift
//  Falling Bricks
//
//  Created by Henry Calderon on 11/19/20.
//

import Foundation
import SceneKit

class Player{
    class func playerNode() -> SCNNode{
        let playerBox = SCNBox(width: 9, height: 9, length: 9, chamferRadius: 0)
        
        let playerNode = SCNNode(geometry: playerBox)
        playerNode.name = "hero"
        
        let position = SCNVector3Make(200, 3.0, 0)
        playerNode.position = position
        
        playerNode.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        playerNode.geometry?.firstMaterial?.shininess = 1.0
        
//        playerNode.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
//        playerNode.physicsBody?.categoryBitMask =
//        playerNode.physicsBody?.collisionBitMask = 
        
        return playerNode
    }
}
