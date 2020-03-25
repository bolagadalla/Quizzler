//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Bola Gadalla on 2/01/20.
//  Copyright © 2020 Bola Gadalla. All rights reserved.
//

import Foundation

struct Question
{
    let question: String
    let choices: [String]
    let answer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        question = q
        choices = a
        answer = correctAnswer
    }
}
