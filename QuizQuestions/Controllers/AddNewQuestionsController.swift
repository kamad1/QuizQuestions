//
//  AddNewQuestionsController.swift
//  QuizQuestions
//
//  Created by Jedi on 30.04.2024.
//

import UIKit

class AddNewQuestionsController: UIViewController {
var mainView = NewQuestionView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        addActionBack()
        addSaveAction()
    }
    
    func addActionBack() {
        let quitAction = UIAction { _ in
            // создаем сам лист на который все поместим
            let quitSheet = UIAlertController(title: "Вы точно хотите выйти? Учтите Вопрос не сохранится", message: nil, preferredStyle: .actionSheet)
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
        
        mainView.backButton.addAction(quitAction, for: .touchUpInside)
    }
    
    func addSaveAction() {
        let saveAction = UIAction { [ unowned self ] _ in
            guard let text = mainView.textQuestionTF.text, !text.isEmpty  else {showInfoAlert(massage: "поле не может быть пустым")
                return
            }
            guard let textAnswer = mainView.currentAnswerTF.text, !textAnswer.isEmpty else {showInfoAlert(massage: "поле не может быть пустым")
                return}
            
            guard let wrongAnswer1 = mainView.wrongAnswer1TF.text, !wrongAnswer1.isEmpty  else {showInfoAlert(massage: "поле не может быть пустым")
                return
            }
            guard let wrongAnswer2 = mainView.wrongAnswer2TF.text, !wrongAnswer2.isEmpty  else {showInfoAlert(massage: "поле не может быть пустым")
                return
            }
            guard let wrongAnswer3 = mainView.wrongAnswer3TF.text, !wrongAnswer3.isEmpty  else {showInfoAlert(massage: "поле не может быть пустым")
                return
            }
         
            let index = mainView.segmentcontroll.selectedSegmentIndex
            
            guard 0..<3 ~= index else {
                showInfoAlert(massage: "Выберите сложность")
                return
            }
            
            let dificulty = Quastion.Difficulty.allCases[index]

                let newQuestion = Quastion(text: text, id: "16", correctAnswer: textAnswer, questionNumber: "16", price: 5000, destructors: [wrongAnswer1, wrongAnswer2, wrongAnswer3], difficulty: dificulty)

            

            
            // Временно уберу добавление задачи в мокданные всех задачь
//            Quastion.mockData.append(newQuestion)
            
            UserDefaultsService.shared.saveQuestion(question: newQuestion)
            
            let vc1 = StartController()
            vc1.modalPresentationStyle = .fullScreen
            self.present(vc1, animated: true)
        }
        mainView.saveButton.addAction(saveAction, for: .touchUpInside)
    }
}


//            let newQuestion = Quastion(text: "", id: "16", correctAnswer: "", questionNumber: "16", price: 500, destructors: [], difficulty: .easy)
