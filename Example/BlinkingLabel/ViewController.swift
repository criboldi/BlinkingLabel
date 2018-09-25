//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by criboldi on 09/25/2018.
//  Copyright (c) 2018 criboldi. All rights reserved.
//

import UIKit
import BlinkingLabel

class ViewController: UIViewController {
    
    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect.init(x: 10, y: 20, width: 200, height: 30))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: 10, y: 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(.red, for: .normal)
        toggleButton.addTarget(self, action: "toggleBlinking", for: .touchUpInside)
        view.addSubview(toggleButton)
    }

    func toggleBlinking() {
        if isBlinking {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

}

