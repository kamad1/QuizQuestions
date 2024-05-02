//
//  AllQuastions.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import Foundation

class Quastion {

    

    var text: String
    var id: String
    var correctAnswer: String
    var questionNumber: String
    var price: Int
    var destructors: [String]
    var difficulty: Difficulty
    
    
    
    var answer: [String] {
        var ans = destructors
        ans.append(correctAnswer)
        return ans.shuffled()
    }
    init(text: String, id: String, correctAnswer: String, questionNumber: String, price: Int, destructors: [String], difficulty: Difficulty) {
        self.text = text
        self.id = id
        self.correctAnswer = correctAnswer
        self.questionNumber = questionNumber
        self.price = price
        self.destructors = destructors
        self.difficulty = difficulty
    }
    
    enum Difficulty: String, CaseIterable {
        case easy = "Легкий"
        case medium = "Средний"
        case hard = "Сложный"
    }
    
    static var mockData: [Quastion] = [
        Quastion(text: "Год рождения Пушкина", id: "1", correctAnswer: "1799", questionNumber: "1", price: 500, destructors: ["1790", "1800", "1791"], difficulty: .easy),
        Quastion(text: "Год рождения Толстого", id: "2", correctAnswer: "1828", questionNumber: "2", price: 500, destructors: ["1890", "1820", "1827"], difficulty: .easy),
        Quastion(text: "Год рождения Лермантова", id: "3", correctAnswer: "1814", questionNumber: "3", price: 500, destructors: ["1810", "1820", "1817"], difficulty: .easy),
        Quastion(text: "Год рождения Лев Иванович ДАВЫДЫЧЕВ", id: "4", correctAnswer: "1927", questionNumber: "4", price: 500, destructors: ["1917", "1817", "1928"], difficulty: .easy),
        Quastion(text: "Год рождения Николая Михайловича РУБЦОВА", id: "5", correctAnswer: "1936", questionNumber: "5", price: 500, destructors: ["1930", "1937", "2017"], difficulty: .easy),
        Quastion(text: "Год рождения Римма Федоровна КАЗАКОВА", id: "6", correctAnswer: "1936", questionNumber: "6", price: 1000, destructors: ["1930", "1937", "2027"], difficulty: .medium),
        Quastion(text: "Год рождения Антон Павлович ЧЕХОВ", id: "7", correctAnswer: "1860", questionNumber: "7", price: 1000, destructors: ["1830", "1837", "1827"], difficulty: .medium),
        Quastion(text: "Год рождения ЕВГЕНИЙ ИВАНОВИЧ ЗАМЯТИН", id: "8", correctAnswer: "1884", questionNumber: "8", price: 1000, destructors: ["1880", "1887", "1867"], difficulty: .medium),
        Quastion(text: "Год рождения МИХАИЛ МИХАЙЛОВИЧ ПРИШВИН", id: "9", correctAnswer: "1873", questionNumber: "9", price: 1000, destructors: ["1880", "1987", "1870"], difficulty: .medium),
        Quastion(text: "Год рождения АГНИИ ЛЬВОВНЫ БАРТО", id: "10", correctAnswer: "1906", questionNumber: "10", price: 1000, destructors: ["1980", "1907", "1900"], difficulty: .medium),
        Quastion(text: "Год рождения ВАСИЛИЙ АНДРЕЕВИЧ ЖУКОВСКИЙ", id: "11", correctAnswer: "1783", questionNumber: "11", price: 2000, destructors: ["1780", "1707", "1700"], difficulty: .hard),
        Quastion(text: "Год рождения БОРИС ЛЕОНИДОВИЧ ПАСТЕРНАК", id: "12", correctAnswer: "1890", questionNumber: "12", price: 2000, destructors: ["1880", "1897", "1891"], difficulty: .hard),
        Quastion(text: "Год рождения ГЕОРГИЙ АЛЕКСАНДРОВИЧ ВАЙНЕР", id: "13", correctAnswer: "1938", questionNumber: "13", price: 2000, destructors: ["1980", "1937", "1931"], difficulty: .hard),
        Quastion(text: "Год рождения ИВАН АНДРЕЕВИЧ КРЫЛОВ", id: "14", correctAnswer: "1769", questionNumber: "14", price: 2000, destructors: ["1780", "1737", "1731"], difficulty: .hard),
        Quastion(text: "Год рождения НИКОЛАЙ ИВАНОВИЧ РЫЛЕНКОВ", id: "15", correctAnswer: "1909", questionNumber: "15", price: 2000, destructors: ["1980", "1910", "1901"], difficulty: .hard)
    ]
    
    
}


