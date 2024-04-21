//
//  GameView.swift
//  QuizQuestions
//
//  Created by Jedi on 21.04.2024.
//

import UIKit

class GameView: UIView {

    
    lazy var bgSecondImageView = UIImageView(image: .bgScreen2)
    var answerButton1 = UIButton(type: .system)
    var answerButton2 = UIButton(type: .system)
    var answerButton3 = UIButton(type: .system)
    var answerButton4 = UIButton(type: .system)
    var quastionsLabel = UILabel()
    var priceLabel = UILabel()
    
    
    init() {
        super.init(frame: .zero)
        setViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setViews() {
        backgroundColor = .white
        bgSecondImageView.contentMode = .scaleAspectFit
        
        quastionsLabel.text = "ТУТ будут ВОПРОСЫ!"
        quastionsLabel.textColor = .black
        quastionsLabel.font = .systemFont(ofSize: 25)
        quastionsLabel.numberOfLines = 0
        quastionsLabel.textAlignment = .center
        quastionsLabel.lineBreakMode = .byCharWrapping
        quastionsLabel.clipsToBounds = true
        
        priceLabel.text = "Цена Вопроса: (ТУТ будет цена) руб"
        priceLabel.font = .systemFont(ofSize: 10)
        
        
        answerButton1.setTitle("ответ 1", for: .normal)
        answerButton2.setTitle("ответ 2", for: .normal)
        answerButton3.setTitle("ответ 3", for: .normal)
        answerButton4.setTitle("ответ 4", for: .normal)
        answerButton1.tintColor = .white
        answerButton2.tintColor = .white
        answerButton3.tintColor = .white
        answerButton4.tintColor = .white
        answerButton1.backgroundColor = .anyColor
        answerButton2.backgroundColor = .anyColor
        answerButton3.backgroundColor = .anyColor
        answerButton4.backgroundColor = .anyColor
        answerButton1.layer.cornerRadius = 12
        answerButton1.layer.shadowColor = UIColor.accent.cgColor
        answerButton1.layer.shadowOpacity = 1
        answerButton1.layer.shadowOffset = .init(width: 5, height: 5)
        answerButton1.layer.shadowRadius = 4
        answerButton2.layer.cornerRadius = 12
        answerButton2.layer.shadowColor = UIColor.accent.cgColor
        answerButton2.layer.shadowOpacity = 1
        answerButton2.layer.shadowOffset = .init(width: 5, height: 5)
        answerButton2.layer.shadowRadius = 4
        answerButton3.layer.cornerRadius = 12
        answerButton3.layer.shadowColor = UIColor.accent.cgColor
        answerButton3.layer.shadowOpacity = 1
        answerButton3.layer.shadowOffset = .init(width: 5, height: 5)
        answerButton3.layer.shadowRadius = 4
        answerButton4.layer.cornerRadius = 12
        answerButton4.layer.shadowColor = UIColor.accent.cgColor
        answerButton4.layer.shadowOpacity = 1
        answerButton4.layer.shadowOffset = .init(width: 5, height: 5)
        answerButton4.layer.shadowRadius = 4
        
    }
    
    func setConstraints() {
        addSubview(bgSecondImageView)
        bgSecondImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bgSecondImageView.topAnchor.constraint(equalTo: topAnchor),
            bgSecondImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bgSecondImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            bgSecondImageView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        let stackButton = UIStackView(views: [answerButton1, answerButton2, answerButton3, answerButton4], axis: .vertical, spasing: 15, alignment: .fill)
        addSubview(stackButton)
        stackButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            stackButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            stackButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
            
        ])
        
        addSubview(quastionsLabel)
        quastionsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            quastionsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            quastionsLabel.bottomAnchor.constraint(equalTo: stackButton.topAnchor, constant: -30)
//            quastionsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
//            quastionsLabel.leadingAnchor.constraint(equalTo: leftAnchor, constant: 10)
        ])
        
        addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: quastionsLabel.topAnchor, constant: -20)
        ])
    }
}
