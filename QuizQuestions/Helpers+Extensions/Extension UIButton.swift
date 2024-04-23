//
//  Extension UIButton.swift
//  QuizQuestions
//
//  Created by Jedi on 23.04.2024.
//

import UIKit


extension UIButton {
    
    convenience init(cornerRadius: CGFloat, shadowColor: CGColor, shadowOpacity: Float, shadowOffset: CGSize, shadowRadius: CGFloat
    ) {
        self.init()
        self.layer.cornerRadius = layer.cornerRadius
        self.layer.shadowColor = layer.shadowColor
        self.layer.shadowOpacity = layer.shadowOpacity
        self.layer.shadowOffset = layer.shadowOffset
        self.layer.shadowRadius = layer.shadowRadius
    }
}
