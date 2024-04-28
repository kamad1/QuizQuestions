//
//  VCExt.swift
//  QuizQuestions
//
//  Created by Jedi on 28.04.2024.
//

import UIKit

extension UIViewController {
    func showInfoAlert(massage: String) {
           let endAction = UIAlertController(title: massage,
                                             message: nil,
                                             preferredStyle: .alert)

               let yesAction = UIAlertAction(title: "Начать заного", style: .destructive) { _ in
                   self.dismiss(animated: true)
   
               }
   
   
               // добавить 2 кнопки на сам quitSheet
        endAction.addAction(yesAction)
   
               // нужно теперь показать
               self.present(endAction, animated: true)
   
           }
   
       }

