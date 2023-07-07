//
//  ViewController.swift
//  JokeApp
//
//  Created by Iurii on 11.05.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.layer.addBorder(side: .bottom, thickness: 2, color: UIColor.black.cgColor)
        questionLabel.layer.addBorder(side: .top, thickness: 2, color: UIColor.black.cgColor)
    }


}

