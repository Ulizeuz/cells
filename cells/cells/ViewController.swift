//
//  ViewController.swift
//  cells
//
//  Created by Ulises Gomez Olguin on 07/02/21.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.session.run(configuration)
        self.sceneView.autoenablesDefaultLighting = true
    }

    @IBAction func add(_ sender: Any) {
        print("button pressed")
        let node = SCNNode()
//        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0)
        node.geometry = SCNCapsule(capRadius: 0.3, height: 2.2)
        node.geometry?.firstMaterial?.specular.contents = UIColor.orange
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.red
        node.position = SCNVector3(0,5,-2)
        node.eulerAngles = SCNVector3(Float(95.degreesToRadians),0,0)
        self.sceneView.scene.rootNode.addChildNode(node)
        
    }
    
}

extension Int {
    
    var degreesToRadians: Double { return Double(self) * .pi/180}
    
}

