//
//  UIStackViewExtension.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import UIKit

extension UIStackView {
    convenience init(views: [UIView],
                     axis: NSLayoutConstraint.Axis,
                     spasing: CGFloat,
                     alignment: Alignment) {
        self.init(arrangedSubviews: views)
        self.axis = axis
        self.spacing = spasing
        self.alignment = alignment
    }
}
