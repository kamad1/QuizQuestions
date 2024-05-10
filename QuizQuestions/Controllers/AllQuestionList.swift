//
//  AllQuestionList.swift
//  QuizQuestions
//
//  Created by Jedi on 05.05.2024.
//

import UIKit

class AllQuestionList: UIViewController {
   let mainView = AllQuestionListView()
    let allQuestions: [Quastion] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        navigationItem.title = "Все вопросы"
        mainView.allQuestionTableView.dataSource = self
        mainView.allQuestionTableView.delegate = self
        
      }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

extension AllQuestionList: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        UserDefaultsService.shared.getAllQuestions().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: AllQuestionCell.reuseID) as! AllQuestionCell
        let question = UserDefaultsService.shared.getAllQuestions()[indexPath.row]
        
        cell.questionLabel.text = question.text
        return cell
    }
    
   
    
}
extension AllQuestionList: UITableViewDelegate {
    func tableView(_ tableView: UITableView, 
                   titleForHeaderInSection section: Int) -> String? {
       
       
       return "Список вопросов"
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        let detailVC = InfoOneQuestions()
        let currentQuestions = UserDefaultsService.shared.getAllQuestions()[indexPath.row]
        detailVC.title = currentQuestions.text
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
}
