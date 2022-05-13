//
//  ViewController.swift
//  segueApp
//
//  Created by Volkan Alkan on 10.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameTf: UITextField!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDİdDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameTf.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDİdAppear function called")
    }

    @IBAction func buttonClicked(_ sender: Any) {
        userName = nameTf.text!
        performSegue(withIdentifier: "toSecondVc", sender: nil)
    }
    
    //prepare = segue olmadan hemen önce yapılacak işlemler!!!!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVc"{
            //gidilen hedef yer
            let destinationVc = segue.destination as! SecondViewController
            // as -- casting
            destinationVc.myName = userName
        }
    }
    
}

