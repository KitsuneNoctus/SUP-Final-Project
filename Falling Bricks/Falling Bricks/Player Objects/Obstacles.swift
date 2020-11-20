//
//  Obstacles.swift
//  Falling Bricks
//
//  Created by Henry Calderon on 11/19/20.
//

import Foundation
import SceneKit

class Obstacles: SCNNode{
    
    let obstacles = [smallBlockNode(),lBlockNode(),bigBlockNode()]
    
    //MARK: Init
//    init(currentScene: GameSCNScene){
//        super.init()
//        self.create(currentScene: currentScene)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    //MARK: Create
    func create(currentScene: SCNScene){
        print("Spawn Obstacle")
        
        
    }
    
    //MARK: Update
    func update(){
        
    }
    
    //MARK: Obstacle Types
    class func lBlockNode() -> SCNNode{
        let lBlock = SCNBox(width: 27, height: 9, length: 9, chamferRadius: 0)
        
        let lBlockNode = SCNNode(geometry: lBlock)
        lBlockNode.name = "lblock"
        
        let position = SCNVector3Make(300, 3.0, 0)
        lBlockNode.position = position
        
        lBlockNode.geometry?.firstMaterial?.diffuse.contents = UIColor.blue
        lBlockNode.geometry?.firstMaterial?.shininess = 1.0
        
        
        return lBlockNode
    }
    
    class func bigBlockNode() -> SCNNode{
        let bigBlock = SCNBox(width: 27, height: 27, length: 9, chamferRadius: 0)
        
        let bigBlockNode = SCNNode(geometry: bigBlock)
        bigBlockNode.name = "bigblock"
        
        let position = SCNVector3Make(100, 3.0, 1)
        bigBlockNode.position = position
        
        bigBlockNode.geometry?.firstMaterial?.diffuse.contents = UIColor.red
        bigBlockNode.geometry?.firstMaterial?.shininess = 1.0
        
        
        return bigBlockNode
    }
    
    class func smallBlockNode() -> SCNNode{
        let bigBlock = SCNBox(width: 9, height: 9, length: 9, chamferRadius: 0)
        
        let bigBlockNode = SCNNode(geometry: bigBlock)
        bigBlockNode.name = "bigblock"
        
        let position = SCNVector3Make(150, 3.0, 0)
        bigBlockNode.position = position
        
        bigBlockNode.geometry?.firstMaterial?.diffuse.contents = UIColor.red
        bigBlockNode.geometry?.firstMaterial?.shininess = 1.0
        
        
        return bigBlockNode
    }
    
    
}
