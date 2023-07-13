//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    var ballArray = [UIImage]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        for i in 1...5 {
            if let image = UIImage(named: "ball\(i)") {
                ballArray.append(image)
            }
        }
    }
        
    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = ballArray.randomElement()
    }

}

