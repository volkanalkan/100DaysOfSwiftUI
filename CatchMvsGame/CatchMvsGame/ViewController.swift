//
//  ViewController.swift
//  CatchMvsGame
//
//  Created by Volkan Alkan on 15.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highscoreLabel: UILabel!
    
    @IBOutlet weak var mvs1: UIImageView!
    @IBOutlet weak var mvs2: UIImageView!
    @IBOutlet weak var mvs3: UIImageView!
    @IBOutlet weak var mvs4: UIImageView!
    @IBOutlet weak var mvs5: UIImageView!
    @IBOutlet weak var mvs6: UIImageView!
    @IBOutlet weak var mvs7: UIImageView!
    @IBOutlet weak var mvs8: UIImageView!
    @IBOutlet weak var mvs9: UIImageView!
    
    var score = 0
    var highscore = 0
    var counter = 0
    var timer = Timer()
    var timerPic = Timer()
    var array = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedHighscore = UserDefaults.standard.object(forKey: "highscore")
        
        if (storedHighscore == nil){
            highscore = 0
            highscoreLabel.text! = "Highscore: \(highscore)"
        }
        
        if let newScore = storedHighscore as? Int{
            highscore = newScore
            highscoreLabel.text! = "Highscore: \(highscore)"
        }
        
        array = [mvs1, mvs2, mvs3, mvs4, mvs5, mvs6, mvs7, mvs8, mvs9]
        
        for mvs in array {
            mvs.isHidden = true
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        
        timerPic = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(changePic), userInfo: nil, repeats: true)
        
        counter = 10
        timeLabel.text! = "\(counter)"
        
        scoreLabel.text! = "Score: \(score)"
        highscoreLabel.text! = "Highscore: \(highscore)"
        
        mvs1.isUserInteractionEnabled = true
        mvs2.isUserInteractionEnabled = true
        mvs3.isUserInteractionEnabled = true
        mvs4.isUserInteractionEnabled = true
        mvs5.isUserInteractionEnabled = true
        mvs6.isUserInteractionEnabled = true
        mvs7.isUserInteractionEnabled = true
        mvs8.isUserInteractionEnabled = true
        mvs9.isUserInteractionEnabled = true
        
        let gestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        let gestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(scoreUp))
        
        mvs1.addGestureRecognizer(gestureRecognizer1)
        mvs2.addGestureRecognizer(gestureRecognizer2)
        mvs3.addGestureRecognizer(gestureRecognizer3)
        mvs4.addGestureRecognizer(gestureRecognizer4)
        mvs5.addGestureRecognizer(gestureRecognizer5)
        mvs6.addGestureRecognizer(gestureRecognizer6)
        mvs7.addGestureRecognizer(gestureRecognizer7)
        mvs8.addGestureRecognizer(gestureRecognizer8)
        mvs9.addGestureRecognizer(gestureRecognizer9)


    }
    
    @objc func changePic() {
        
        for mvs in array {
            mvs.isHidden = true
        }
        
        let random = Int(arc4random_uniform(UInt32(array.count - 1)))
        array[random].isHidden = false
        
    }
    
    @objc func scoreUp() {
        
        score += 1
        scoreLabel.text! = "Score: \(score)"
        
        if (score >= highscore){
            highscore  = score
            highscoreLabel.text! = "Highscore: \(highscore)"
            UserDefaults.standard.set(highscore, forKey: "highscore")
        }
    }
    
    @objc func countDown() {
        
        counter -= 1
        timeLabel.text! = "\(counter)"
        
        if (counter == 0){
            
            timer.invalidate()
            timerPic.invalidate()
            
            for mvs in array {
                mvs.isHidden = true
            }
            
            let alert = UIAlertController(title: "Time's Up", message: "Do you want to play again?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                // restart function
                
                self.timeLabel.text = String(10)
                self.score = 0
                self.counter = 10
                self.scoreLabel.text! = "Score: \(self.score)"
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDown), userInfo: nil, repeats: true)
                
                self.timerPic = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.changePic), userInfo: nil, repeats: true)
                
            }
            self.present(alert, animated: true, completion: nil)
            alert.addAction(okButton)
            alert.addAction(replayButton)
            
        }
    }


}

