//
//  ViewController.swift
//  FirstApp
//
//  Created by Volkan Alkan on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeButton(_ sender: Any) {
        
        imageView.image = UIImage(named: "nike-aMZP")
        
    }
}

