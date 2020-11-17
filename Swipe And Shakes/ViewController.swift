//
//  ViewController.swift
//  Swipe And Shakes
//
//  Created by be RUPU on 17/11/20.
//  Copyright © 2020 be RUPU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swifpeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture(gesture:)))
        swifpeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swifpeRight)
        
        let swifpeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture(gesture:)))
        swifpeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swifpeLeft)
        
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEvent.EventSubtype.motionShake {
            print("shake that booty")
        }
    }
    
    @objc func swipeGesture(gesture: UIGestureRecognizer) {
        if let swipegesture = gesture as? UISwipeGestureRecognizer {
            switch swipegesture.direction {
            case UISwipeGestureRecognizer.Direction.right :
                print("Swipe Right")
                
            case UISwipeGestureRecognizer.Direction.left :
                print("Swipe Left")
            default:
                break
            }
        }
    }

}

