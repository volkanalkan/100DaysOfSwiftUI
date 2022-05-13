//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Volkan Alkan on 13.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageViewJames: UIImageView!
    @IBOutlet weak var LabelJames: UILabel!
    
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageViewJames.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (changePic))
        imageViewJames.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
        if (isJames == true) {
            imageViewJames.image = UIImage(named: "kirk")
            LabelJames.text = "Kirk Hammet"
            isJames = false
        } else if (isJames == false) {
            imageViewJames.image = UIImage(named: "james")
            LabelJames.text = "James Hetfield"
            isJames = true
        }
        
    }


}

