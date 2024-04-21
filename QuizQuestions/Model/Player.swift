//
//  Player.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import Foundation

class Player {
    
    var AllQuestions: [String] = []
    
    let name: String
    private(set) var score: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func addScore(_ score: Int) {
        self.score += score
    }
     
}
