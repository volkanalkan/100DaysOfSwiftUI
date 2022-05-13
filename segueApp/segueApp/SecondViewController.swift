//
//  SecondViewController.swift
//  segueApp
//
//  Created by Volkan Alkan on 10.05.2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName
    }

}
