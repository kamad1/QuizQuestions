//
//  AllQuestionListView.swift
//  QuizQuestions
//
//  Created by Jedi on 05.05.2024.
//

import UIKit

class AllQuestionListView: UIView {
    var allQuestionTableView = UITableView()
    
    init() {
        super.init(frame: .zero)
        setViews()
        setConstraints()
    }
    
    
    
    func setViews() {
        backgroundColor = .white
        allQuestionTableView.backgroundColor = .clear
        allQuestionTableView.layer.cornerRadius = 12
        allQuestionTableView.backgroundColor = .anyColor
        allQuestionTableView.layer.borderWidth = 3
        allQuestionTableView.layer.borderColor = UIColor.startLabelColor.cgColor
        
        allQuestionTableView.register(AllQuestionCell.self, forCellReuseIdentifier: AllQuestionCell.reuseID)
    }
    
    func setConstraints() {
        addSubview(allQuestionTableView)
        allQuestionTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            allQuestionTableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            allQuestionTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0),
            allQuestionTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            allQuestionTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            allQuestionTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50)

                ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
