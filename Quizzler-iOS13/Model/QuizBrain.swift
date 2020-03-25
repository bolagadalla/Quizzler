//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Bola Gadalla on 2/01/20.
//  Copyright © 2020 Bola Gadalla. All rights reserved.
//

import Foundation

struct QuizBrain
{
    var questionNumber = 0
    var score = 0
    let questions =
    [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    
    mutating func CheckQuestion(_ userAnswer: String) -> Bool
    {
        if userAnswer == questions[questionNumber].answer
        {
            score += 1
            return true
        }
        else
        {
            return false
        }
    }
    
    func GetNextQuestionText () -> String
    {
        let nextQ = questions[questionNumber].question
        return nextQ
    }
    
    func SettingChoices (choiceIndex: Int) -> String
    {
        let choiceText = questions[questionNumber].choices[choiceIndex - 1] // So the the input can start from 1 instead of 0
        return choiceText
    }
    
    func GetPrograss() -> Float {
        let prograss = Float(questionNumber + 1) / Float(questions.count)
        return prograss
    }
    
    mutating func NextQuestion()
    {
        if questionNumber + 1 < questions.count
        {
            questionNumber += 1
        }
        else
        {
            questionNumber = 0
            score = 0
        }
    }
    
    func GetScore() -> Int
    {
        return score
    }
}
