//
//  ViewController.swift
//  basic app
//
//  Created by Volkan Alkan on 27.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonClicked(_ sender: Any) {
        resultLabel.text = String(Int(firstNumber.text!)!*10)
    }
    

}

