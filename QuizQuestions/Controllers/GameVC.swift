//
//  GameVC.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import UIKit

class GameVC: UIViewController {

    var secondView = GameView()
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.name)
    view = secondView
    }
    


}
