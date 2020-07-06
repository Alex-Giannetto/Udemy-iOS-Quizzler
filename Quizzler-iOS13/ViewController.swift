//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        progressBar.progress = 0
        questionLabel.text = "Four + Tow is equal to Six"
    }
    
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
    }
    

}

