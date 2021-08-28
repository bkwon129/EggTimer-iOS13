//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes : [String:Int] = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    var count = 60
    var timer = Timer()
    override func viewDidLoad() {
        // start a 60s countdown timer
        timer = Timer.scheduledTimer(timeInterval: <#T##TimeInterval#>, target: <#T##Any#>, selector: startCountdown, userInfo: <#T##Any?#>, repeats: <#T##Bool#>)
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness]!)
    
    }
    
    func startCountdown() {
        
    }
    
}
