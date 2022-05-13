//
//  ViewController.swift
//  AlertProject
//
//  Created by Volkan Alkan on 13.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var password2Tf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func makeAlert (titleInput: String, messageInput: String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
    }
    
    @IBAction func signUpButtonClicked(_ sender: Any) {
        if (usernameTf.text! == "") {
            makeAlert(titleInput: "Error!", messageInput: "username not found")
        } else if (passwordTf.text! == "") {
            makeAlert(titleInput: "Error!", messageInput: "password not found")
        } else if (passwordTf.text! != password2Tf.text!) {
            makeAlert(titleInput: "Error!", messageInput: "passwords does not match")
        } else {
            makeAlert(titleInput: "Success!", messageInput: "your register has completely done")
        }
    }
    
}

