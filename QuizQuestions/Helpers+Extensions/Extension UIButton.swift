//
//  Extension UIButton.swift
//  QuizQuestions
//
//  Created by Jedi on 23.04.2024.
//

import UIKit


extension UIButton {
    
    convenience init(title: String ) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        layer.cornerRadius = 12
        layer.shadowOpacity = 1
        layer.shadowOffset = .init(width: 5, height: 5)
        layer.shadowRadius = 4
    }
}
