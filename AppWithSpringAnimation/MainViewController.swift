//
//  ViewController.swift
//  AppWithSpringAnimation
//
//  Created by Bogdan Baskakov on 20/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import Spring

class MainViewController: UIViewController {
    
    let animations = ["morph", "pop", "shake", "swing", "wobble"]
    let curves = ["linear", "spring", "easeInOutSine", "easeInCirc", "easeIn"]
    
    @IBOutlet var animationOptions: SpringLabel!
    @IBOutlet var animatedView: SpringView!
    @IBOutlet var startAnimation: SpringButton!
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        switch sender.tag {
        case 0:
            animationSetup(sender, sender.tag)
            startAnimation.setTitle(animations[1],
                                    for: .normal)
            sender.tag += 1
        case 1:
            animationSetup(sender, sender.tag)
            startAnimation.setTitle(animations[2],
                                    for: .normal)
            sender.tag += 1
        case 2:
            animationSetup(sender, sender.tag)
            startAnimation.setTitle(animations[3],
                                    for: .normal)
            sender.tag += 1
        case 3:
            animationSetup(sender, sender.tag)
            startAnimation.setTitle(animations[4],
                                    for: .normal)
            sender.tag += 1
        case 4:
            animationSetup(sender, sender.tag)
            startAnimation.setTitle(animations[0],
                                    for: .normal)
            sender.tag = 0
        default:
            break
        }
    }
    
}

