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
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        updateButn(button: sender, isCorrect: quizBrain.checkAnswer(userAnswer))
        quizBrain.nextQuestion()
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = String(quizBrain.score)
    }
    
    func updateButn(button: UIButton, isCorrect: Bool){
        button.backgroundColor = isCorrect ? UIColor.green : UIColor.red
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2) {
            button.backgroundColor = UIColor.clear
        }

    }
    
    
}

