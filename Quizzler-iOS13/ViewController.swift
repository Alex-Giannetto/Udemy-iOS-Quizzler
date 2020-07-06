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
    
    let quiz = [
        ["Four + Tow is equal to Six", true],
        ["Five - Three is gretter than One", true],
        ["Three + Eight is less than Ten", false]
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
        }
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
        progressBar.progress = Float(questionNumber) / Float(quiz.count)
    }
    

}

