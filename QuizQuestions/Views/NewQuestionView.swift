//
//  NewQuestionView.swift
//  QuizQuestions
//
//  Created by Jedi on 30.04.2024.
//

import UIKit


class NewQuestionView: UIView {
    
    lazy var bgImage = UIImageView(image: .bgNewQuestions)
    lazy var titleLabel = UILabel(text: "Придумайте новый вопрос",
                                  color: .startLabelColor,
                                  font: .boldSystemFont(ofSize: 30),
                                  bgColor: .clear)
   
    var menuSegmentControll = ["Легкий","Средний", "Сложный"]
    
    lazy var textQuestionTF = UITextField(placeholder: "Введите новый вопрос")
    lazy var currentAnswerTF = UITextField(placeholder: "Введите правильный ответ")
    lazy var wrongAnswer1TF = UITextField(placeholder: "Введите не правильный ответ")
    lazy var wrongAnswer2TF = UITextField(placeholder: "Введите не правильный ответ")
    lazy var wrongAnswer3TF = UITextField(placeholder: "Введите не правильный ответ")
    lazy var segmentcontroll = UISegmentedControl()
    lazy var backButton = UIButton(title: "Назад")
    lazy var saveButton = UIButton(title: "Сохранить")
    
    var stackQuestionsTF = UIStackView(views: [],
                                                          axis: .vertical,
                                                          spasing: 10,
                                                          alignment: .fill)
    var stackButton = UIStackView(views: [],
                                  axis: .horizontal,
                                  spasing: 200,
                                  alignment: .fill)
    
    var stack = UIStackView(views: [],
                            axis: .vertical,
                            spasing: 20,
                            alignment: .fill)
   
    
    init() {
        super.init(frame: .zero)
//        self.deffeculty = deffeculty
        setViews()
        setConstreints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViews() {
        backgroundColor = .white
        bgImage.contentMode = .scaleAspectFill
        titleLabel.clipsToBounds = true
        titleLabel.sizeToFit()
        textQuestionTF.layer.borderWidth = 4
        textQuestionTF.layer.borderColor = UIColor.green.cgColor
        
        stackQuestionsTF.addArrangedSubview(wrongAnswer1TF)
        stackQuestionsTF.addArrangedSubview(wrongAnswer2TF)
        stackQuestionsTF.addArrangedSubview(wrongAnswer3TF)
        
        stackButton.addArrangedSubview(backButton)
        stackButton.addArrangedSubview(saveButton)
        
        stack.addArrangedSubview(currentAnswerTF)
        stack.addArrangedSubview(stackQuestionsTF)
        stack.addArrangedSubview(stackButton)
        
        currentAnswerTF.layer.borderWidth = 4
        currentAnswerTF.layer.borderColor = UIColor.systemGreen.withAlphaComponent(0.6).cgColor
        
        wrongAnswer1TF.layer.borderWidth = 4
        wrongAnswer1TF.layer.borderColor = UIColor.systemRed.withAlphaComponent(0.3).cgColor
        wrongAnswer2TF.layer.borderWidth = 4
        wrongAnswer2TF.layer.borderColor = UIColor.systemRed.withAlphaComponent(0.3).cgColor
        wrongAnswer3TF.layer.borderWidth = 4
        wrongAnswer3TF.layer.borderColor = UIColor.systemRed.withAlphaComponent(0.3).cgColor
        
        self.segmentcontroll = UISegmentedControl(items: menuSegmentControll)
//        segmentcontroll.layer.backgroundColor = UIColor.red.cgColor
//        segmentcontroll.tintColor = .black
        
        backButton.backgroundColor = .red
        backButton.tintColor = .black
        
        saveButton.backgroundColor = .green
        saveButton.tintColor = .black
        
        
    }
    
    func setConstreints() {
       addSubview(bgImage)
        bgImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bgImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            bgImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            bgImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            bgImage.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 400)
        ])
        
                addSubview(segmentcontroll)
                segmentcontroll.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    segmentcontroll.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
                    segmentcontroll.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
                    segmentcontroll.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
                ])
        
        addSubview(textQuestionTF)
        textQuestionTF.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textQuestionTF.topAnchor.constraint(equalTo: segmentcontroll.bottomAnchor, constant: 10),
            textQuestionTF.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            textQuestionTF.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
        
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: textQuestionTF.bottomAnchor, constant: 20),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            saveButton.widthAnchor.constraint(equalToConstant: 100),
            backButton.widthAnchor.constraint(equalTo: saveButton.widthAnchor)
        ])

    }
}

#Preview {
    NewQuestionView()
}

//    var deffeculty: Quastion.Difficulty?
//
//    var menuSegmentControll: String {
//
//        switch deffeculty! {
//        case .easy : "Легкий"
//        case .medium : "Средний"
//        case .hard : "Сложный"
//        }
//
//    }
// Енам не победил требует инициализировать переменную ее не получилось обойти)))
