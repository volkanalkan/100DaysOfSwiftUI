//
//  ViewController.swift
//  birthdayNoteTaker
//
//  Created by Volkan Alkan on 10.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTw: UITextField!
    @IBOutlet weak var birthdayTw: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting - as? vs. as!
        //as? -> if you can
        //as! -> you have to definitely do that || force casting
        // we generaly use 'as!' for 'Any' type
        
        //nameLabel.text = as? storedName - if let is most logical way
        if let newName = storedName as? String {
            nameLabel.text = "Name: \(newName)"
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = "Birthday: \(newBirthday)"
        }
    }
    
    @IBAction func buttonClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTw.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTw.text!, forKey: "birthday")
        //UserDefaults.standard.synchronize()
        
        nameLabel.text = "Name: \(nameTw.text!)"
        
        // opt + * for backslash     \\
        // opt + - for straight line \\
        birthdayLabel.text = "Birthday: \(birthdayTw.text!)"
        
    

    }
    
    @IBAction func deleteButtonClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "Name: "
        }
        
        if (storedBirthday as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
    }
    
}

