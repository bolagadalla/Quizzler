//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Bola Gadalla on 2/01/20.
//  Copyright © 2020 Bola Gadalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var prograssBar: UIProgressView!
    @IBOutlet weak var scoreText: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        prograssBar.progress = 0
        UpdateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton)
    {
        let userAnswer = sender.currentTitle!
        
        if quizBrain.CheckQuestion(userAnswer)
        {
            sender.backgroundColor = UIColor.green
        }
        else
        {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.NextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.20, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
    
    @objc func UpdateUI()
    {
        questionText.text = quizBrain.GetNextQuestionText()
        
        choice1.setTitle(quizBrain.SettingChoices(choiceIndex: 1), for: .normal)
        choice2.setTitle(quizBrain.SettingChoices(choiceIndex: 2), for: .normal)
        choice3.setTitle(quizBrain.SettingChoices(choiceIndex: 3), for: .normal)
        
        scoreText.text = "Score: \(quizBrain.GetScore())"
        prograssBar.progress = quizBrain.GetPrograss()
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
    }
    
}

