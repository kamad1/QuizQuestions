//
//  AllQuastions.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import Foundation

struct AllQuastions {
    static var questions = [[AllQuastions(text: "Год рождения Пушкина", id: "1", correctAnswer: "1799",                               questionNumber: 1, price: "100")],
                            [AllQuastions(text: "Год рождения Толстого", id: "2", correctAnswer: "1828", questionNumber: 2, price: "200")],
                            [AllQuastions(text: "Год рождения Лермантова", id: "3", correctAnswer: "1814", questionNumber: 3, price: "300")]
    ]
    var text: String
    var id: String
    var correctAnswer: String
    var questionNumber: Int
    var price: String
    var destructors: [String] = ["1970", "1980", "1990"]
    var allQuestions: [String] {
        var answerall = ["1799", "1828", "1814", correctAnswer]
        answerall.shuffle()

        return answerall
        }
 
}


