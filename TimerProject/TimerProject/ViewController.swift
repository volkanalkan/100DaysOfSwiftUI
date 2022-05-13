//
//  ViewController.swift
//  TimerProject
//
//  Created by Volkan Alkan on 13.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counter = 10
        timerLabel.text! = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction () {
        
        timerLabel.text! = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timerLabel.text = "Time's Over"
        }
        
    }
    
    

    @IBAction func buttonClicked(_ sender: Any) {
        
    }
    
}

