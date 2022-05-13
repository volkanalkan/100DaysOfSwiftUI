//
//  ViewController.swift
//  deneme
//
//  Created by Volkan Alkan on 22.03.2022.
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
    
    @IBAction func addition(_ sender: Any) {
        if let x = Int(firstNumber.text!){
            if let y = Int(secondNumber.text!) {
                result = x+y
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func subtraction(_ sender: Any) {
        if let x = Int(firstNumber.text!){
            if let y = Int(secondNumber.text!) {
                if (x >= y){
                    result = x-y
                }
                else {
                    result = y-x
                }
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func division(_ sender: Any) {
        if let x = Int(firstNumber.text!){
            if let y = Int(secondNumber.text!) {
                result = x/y
                resultLabel.text = String(result)
            }
        }
    }
    
    @IBAction func multiplication(_ sender: Any) {
        if let x = Int(firstNumber.text!){
            if let y = Int(secondNumber.text!) {
                result = x*y
                resultLabel.text = String(result)
            }
        }
    }
    

}

