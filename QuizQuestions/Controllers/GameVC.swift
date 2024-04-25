//
//  GameVC.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import UIKit

class GameVC: UIViewController {

    var secondView = GameView()
    var balance = 0
    var player: Player!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.name)
        view = secondView
        addAction()
        setupGame()
    }
    
    // Создаю алерт для кнопки выйти
    func addAction() {
        let quitAction = UIAction { _ in
            // создаем сам лист на который все поместим
            let quitSheet = UIAlertController(title: "Вы точно хотите выйти?", message: nil, preferredStyle: .actionSheet)
            // добавим на нее 2 кнопки
            let yesAction = UIAlertAction(title: "Да", style: .destructive) { _ in
                self.dismiss(animated: true)
            }
            
            let noAction = UIAlertAction(title: "Нет", style: .cancel)
            // добавить 2 кнопки на сам quitSheet
            quitSheet.addAction(yesAction)
            quitSheet.addAction(noAction)
            // нужно теперь показать
            self.present(quitSheet, animated: true)
        }
        
        secondView.outButton.addAction(quitAction, for: .touchUpInside)
    }

    func setupGame() {
        secondView.nameLabel.text = player.name
        secondView.balanceLabel.text = "Банк: \(balance) руб"
        let i = AllQuastions.questions.randomElement()
        secondView.quastionsLabelText.text = i?[0].text
        secondView.countLabelQuastionsNumberLabel.text = i?[0].id
        secondView.priceLabel.text = "Цена вопроса:\(String(describing: i![0].price)) руб"
        secondView.answerButton1.setTitle(i![0].correctAnswer, for: .normal)
        
    }
   
}
