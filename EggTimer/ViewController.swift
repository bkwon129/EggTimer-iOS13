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
        "Soft": 300,
        "Medium": 420,
        "Hard": 720
    ]
    var count = 60
    var timer = Timer()

    override func viewDidLoad() {
        // run code on view load
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        
        print(eggTimes[hardness]!)
        startCountdown()
    
    }
    
    func startCountdown() {
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){(Timer) in
            // make sure to stop timer by invalidating it when 0 seconds remain
            if self.count > 0 {
                print("\(self.count) seconds remaining.")
                self.count -= 1
            } else {
                self.timer.invalidate()
            }
        }
    }
    
}
