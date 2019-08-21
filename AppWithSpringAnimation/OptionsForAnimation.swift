//
//  OptionsForAnimation.swift
//  AppWithSpringAnimation
//
//  Created by Bogdan Baskakov on 21/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import Spring

extension MainViewController {
    
    func setAnimation(_ sender: SpringButton, _ tag: Int) {
        
        var force = animatedView.force
        var duration = animatedView.duration
        var delay = animatedView.delay
        
        animatedView.animation = animations[sender.tag]
        animatedView.curve = curves[sender.tag]
        
        force = CGFloat.random(in: 1.0...2.0)
        duration = CGFloat.random(in: 1.0...4.0)
        delay = CGFloat.random(in: 0.4...1.0)
        
        animationOptions.text = """
        Animation:
        \(animations[sender.tag])
        Curve:
        \(curves[sender.tag])
        Force: \(String(format:"%.1f", force))
        Duration: \(String(format:"%.1f", duration))
        Delay: \(String(format:"%.1f", delay))
        """
        
        animatedView.animate()
    }
}
