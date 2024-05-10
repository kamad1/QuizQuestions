
import UIKit

class StartController: UIViewController {
    // MARK: - Свойства
    var mainView = StartView()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        addActions()
        addTapToDismissKeyboard()
        
  
    }
    // метод который при выходе на главный экран очищает плейсхолдер
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        mainView.myNameTF.text?.removeAll()
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
        
        let addAction = UIAction { [unowned self] _ in
            
            let vc = AddNewQuestionsController()
            vc.modalPresentationStyle = .fullScreen
            self.present(vc, animated: true)
            
        }
        
        mainView.addQuestionButton.addAction(addAction, for: .touchUpInside)
        
        let addActionList = UIAction { [unowned self] _ in
            
            let vc = AllQuestionList()
            vc.modalPresentationStyle = .fullScreen
//            self.present(vc, animated: true)
            navigationController?.pushViewController(vc, animated: true)
        }
        
        mainView.allQuestions.addAction(addActionList, for: .touchUpInside)
    }

}

