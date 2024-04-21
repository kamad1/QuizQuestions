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
    var quastionsLabelText = UILabel()
    var priceLabel = UILabel()
    // НЕ РАБОТАЕТ ФРЕЙМ КРУГА- это лейбл счетчика вомпросов
    var countLabelQuastions = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: 180.0, height: 180.0))
    
    
  
    
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
        
        quastionsLabelText.text = "ТУТ будут ВОПРОСЫ!"
        quastionsLabelText.textColor = .black
        quastionsLabelText.font = .systemFont(ofSize: 25)
        quastionsLabelText.numberOfLines = 0
        quastionsLabelText.textAlignment = .center
        quastionsLabelText.lineBreakMode = .byCharWrapping
        quastionsLabelText.clipsToBounds = true
        
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
        
        // Лейбл счетчика вопросов
        countLabelQuastions.text = "6 вопрос"
        countLabelQuastions.textColor = .white
        countLabelQuastions.textAlignment = .center
        countLabelQuastions.font = .systemFont(ofSize: 24)
        countLabelQuastions.layer.backgroundColor = UIColor.anyColor.cgColor
        countLabelQuastions.layer.borderColor = UIColor.startLabelColor.cgColor
        
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
        
        addSubview(quastionsLabelText)
        quastionsLabelText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            quastionsLabelText.centerXAnchor.constraint(equalTo: centerXAnchor),
            quastionsLabelText.bottomAnchor.constraint(equalTo: stackButton.topAnchor, constant: -30)
//            quastionsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
//            quastionsLabel.leadingAnchor.constraint(equalTo: leftAnchor, constant: 10)
        ])
        
        addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: quastionsLabelText.topAnchor, constant: -20)
        ])
        
//        Устанавливаем лейбл счетчика вопросов но не работает фрейм
        addSubview(countLabelQuastions)
        countLabelQuastions.translatesAutoresizingMaskIntoConstraints = false
        // НЕ РАБОТАЕТ
//        countLabelQuastions.layer.cornerRadius = countLabelQuastions.frame.height / 2

        countLabelQuastions.layer.borderWidth = 3.0
        countLabelQuastions.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            countLabelQuastions.centerXAnchor.constraint(equalTo: centerXAnchor),
            countLabelQuastions.bottomAnchor.constraint(equalTo: priceLabel.topAnchor, constant: -100)
        ])
    }
}
