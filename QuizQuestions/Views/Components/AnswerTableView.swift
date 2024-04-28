//
//  AnswerTableView.swift
//  QuizQuestions
//
//  Created by Jedi on 28.04.2024.
//

import UIKit

class AnswerTableView: UITableViewCell {
    static let reuseID: String = "AnswerTableView"
    
    let answerLabel = UILabel(text: "ANSWERS1", font: .boldSystemFont(ofSize: 10), bgColor: .red)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
        senConstreints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViews() {
        answerLabel.textAlignment = .center
        
        backgroundColor = .anyColor
    }
    
    func senConstreints() {
        addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.backgroundColor = .blue.withAlphaComponent(0.4)
        
        NSLayoutConstraint.activate([
            answerLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            answerLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    

//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }

}
