//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes : [String:Int] = [
        "Soft": 300,
        "Medium": 420,
        "Hard": 720
    ]
    
    let progressIncrements: [String:Float] = [
        "Soft": 0.003333333,
        "Medium": 0.002380952,
        "Hard": 0.001388889
    ]

    var count : Int = 0
    var timer = Timer()

    override func viewDidLoad() {
        // run code on view load
        progressBar.progress = 0
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        // invalidate timer on select
        timer.invalidate()
        let hardness = sender.currentTitle!
        let secondsLeft = eggTimes[hardness]!
        startCountdown(startingValue: secondsLeft, hardness: hardness)
    }
    
    func startCountdown(startingValue: Int, hardness: String) {
        count = startingValue
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true){(Timer) in
            // make sure to stop timer by invalidating it when 0 seconds remain
            if self.count > 0 {
                print("\(self.count) seconds remaining.")
                self.progressBar.progress += self.progressIncrements[hardness]!
                self.count -= 1
            } else {
                self.timer.invalidate()
                self.mainLabel.text = "Done!"
            }
        }
    }
    
}
