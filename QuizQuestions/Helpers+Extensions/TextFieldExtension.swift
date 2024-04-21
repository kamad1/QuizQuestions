//
//  TextFieldExtension.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import UIKit

extension UITextField {

    convenience init(placeholder: String) {
        self.init()
        self.placeholder = placeholder
        self.backgroundColor = .tfColor
        self.heightAnchor.constraint(equalToConstant: 40).isActive = true
        self.layer.cornerRadius = 12
        self.textAlignment = .center
            self.attributedPlaceholder = NSAttributedString(
                string: placeholder,
                attributes: [NSAttributedString.Key.foregroundColor: UIColor.black]
            )
    }

}
