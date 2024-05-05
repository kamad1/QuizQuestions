//
//  UserDefaultsService.swift
//  QuizQuestions
//
//  Created by Jedi on 05.05.2024.
//

import Foundation

class UserDefaultsService {
    static let shared = UserDefaultsService(); private init() {}
    private let conteiner = UserDefaults.standard
    private let questionKey = "qKey"
    
    
    func saveQuestion(question: Quastion) {
        guard var represes = conteiner.array(forKey: questionKey) as? [[String: Any]] else {
            let array = [question.representation]
            conteiner.set(array, forKey: questionKey)
            return
        }
        represes.append(question.representation)
        conteiner.set(represes, forKey: questionKey)
    }
    
    
    
    func getAllQuestions() -> [Quastion] {
        guard let represes = conteiner.array(forKey: questionKey) as? [[String: Any]] else { return [] }
        let question = represes.compactMap { Quastion($0) }
        
        return question
    }
}
