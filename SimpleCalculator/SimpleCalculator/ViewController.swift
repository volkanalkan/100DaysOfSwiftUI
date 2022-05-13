//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Volkan Alkan on 21.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func plusClicked(_ sender: Any) {
        
        if let x = Int(firstNumber.text!) {
            
            if let y = Int(secondNumber.text!) {
                
                result = x + y
                resultLabel.text = String(result)
                
            }
            
        }
        
    }
    
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let x = Int(firstNumber.text!) {
            
            if let y = Int(secondNumber.text!) {
                
                result = x - y
                resultLabel.text = String(result)
                
            }
            
        }
        
    }
    
    
    @IBAction func multiplyClicked(_ sender: Any) {
        
        if let x = Int(firstNumber.text!) {
            
            if let y = Int(secondNumber.text!) {
                
                result = x * y
                resultLabel.text = String(result)
                
            }
            
        }
        
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        
        if let x = Int(firstNumber.text!) {
            
            if let y = Int(secondNumber.text!) {
                
                result = x / y
                resultLabel.text = String(result)
                
            }
            
        }
        
    }
    

}

