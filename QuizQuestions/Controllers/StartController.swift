//
//  ViewController.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import UIKit

class StartController: UIViewController {
    // MARK: - Свойства
    var mainView = StartView()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        addActions()
    }
    
// MARK: - Методы
    
    // Метод добавления действий стартnjulf
    func addActions() {
        
        let startAction = UIAction { [unowned self] _ in
            var myNameTF = mainView.myNameTF.text ?? "Игрок 1"
            if myNameTF.isEmpty {myNameTF = "Игрок 1"}
            
            let player = Player(name: myNameTF)
            
            let vc = GameVC()
            vc.player = player
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
        }
        
        mainView.startButton.addAction(startAction, for: .touchUpInside)
        
    }

}

