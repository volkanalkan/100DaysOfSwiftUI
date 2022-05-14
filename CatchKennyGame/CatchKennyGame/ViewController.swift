//
//  ViewController.swift
//  CatchKennyGame
//
//  Created by Volkan Alkan on 13.05.2022.
//

/* THAT'S WHAT I TRIED */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    
    var timer = Timer()
    var timerPic = Timer()
    var counter = 0
    var score = 0
    var highscore = 0
    var randomInt = Int.random(in: 1..<10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img1.isUserInteractionEnabled = true
        img1.isHidden = true
        img2.isUserInteractionEnabled = true
        img2.isHidden = true
        img3.isUserInteractionEnabled = true
        img3.isHidden = true
        img4.isUserInteractionEnabled = true
        img4.isHidden = true
        img5.isUserInteractionEnabled = true
        img5.isHidden = true
        img6.isUserInteractionEnabled = true
        img6.isHidden = true
        img7.isUserInteractionEnabled = true
        img7.isHidden = true
        img8.isUserInteractionEnabled = true
        img8.isHidden = true
        img9.isUserInteractionEnabled = true
        img9.isHidden = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (scoreGain))
        img1.addGestureRecognizer(gestureRecognizer)
        img2.addGestureRecognizer(gestureRecognizer)
        img3.addGestureRecognizer(gestureRecognizer)
        img4.addGestureRecognizer(gestureRecognizer)
        img5.addGestureRecognizer(gestureRecognizer)
        img6.addGestureRecognizer(gestureRecognizer)
        img7.addGestureRecognizer(gestureRecognizer)
        img8.addGestureRecognizer(gestureRecognizer)
        img9.addGestureRecognizer(gestureRecognizer)
        
        let storedHighscore = UserDefaults.standard.object(forKey: "highscore")
        highscoreLabel.text! = "highscore: \(highscore)"
        
        counter = 10
        
        timeLabel.text! = String(counter)
        scoreLabel.text! = "Score: \(score)"
        highscoreLabel.text! = "Highscore: \(highscore)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCounter), userInfo: nil, repeats: true)

        while (counter != 0){
            timerPic = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(changePicPlace), userInfo: nil, repeats: true)
        }

    }
    
    @objc func changePicPlace () {
        
        img1.isHidden = true
        img2.isHidden = true
        img3.isHidden = true
        img4.isHidden = true
        img5.isHidden = true
        img6.isHidden = true
        img7.isHidden = true
        img8.isHidden = true
        img9.isHidden = true
        
        
            if (randomInt == 1){
                img1.isHidden = false
            } else if (randomInt == 2){
                img2.isHidden = false
            } else if (randomInt == 3){
                img3.isHidden = false
            } else if (randomInt == 4){
                img4.isHidden = false
            } else if (randomInt == 5){
                img5.isHidden = false
            } else if (randomInt == 6){
                img6.isHidden = false
            } else if (randomInt == 7){
                img7.isHidden = false
            } else if (randomInt == 8){
                img8.isHidden = false
            } else if (randomInt == 9){
                img9.isHidden = false
            }
        
            randomInt = Int.random(in: 1..<10)
        
    }
    
    @objc func scoreGain () {
        
        while(img1.isHidden == false || img2.isHidden == false || img3.isHidden == false || img4.isHidden == false || img5.isHidden == false || img6.isHidden == false || img7.isHidden == false || img8.isHidden == false || img9.isHidden == false) {
            
                score += 1
            
        }
        
        if(score >= highscore){
            highscore = score
        }
        
        UserDefaults.standard.set(highscore, forKey: "highscore")
    }
    
    func makeAlert(inputType: String, messageType: String) {
        let alert = UIAlertController(title: inputType, message: messageType, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        let restartButton = UIAlertAction(title: "Restart", style: UIAlertAction.Style.default, handler: nil)
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        alert.addAction(restartButton)
    }
    
    @objc func timeCounter () {
        timeLabel.text! = String(counter)
        counter -= 1
        
        if (counter == 0) {
            timer.invalidate()
            makeAlert(inputType: "Finish", messageType: "Time's Over")
        }
            
    }
    
    /* in score func
     
    if (score > highscore){
        highscore = score
    }
     
    */


}

