import UIKit

class GameView: UIView {

    lazy var bgSecondImageView = UIImageView(image: .bgSecondView)
    var answerTableView = UITableView()
    var quastionsLabelText: UILabel = .init(text: "ТУТ будут ВОПРОСЫ! которые подтянем из сети или из массива",
                                            color: .black, font: UIFont(name: "HelveticaNeue-Bold", size: 30)!, bgColor: .clear)
    var priceLabel: UILabel = .init(text: "Цена Вопроса: (ТУТ будет цена) руб",
                                    color: .black,
                                    font: UIFont(name: "HelveticaNeue-Bold", size: 11)!, bgColor: .clear)
    var countLabelQuastionsNumberLabel: UILabel = .init(text: "1",
                                                        color: .white,
                                                        font: .systemFont(ofSize: 70),
                                                        bgColor: .anyColor)
    var countLabelQuastionsTextLabel: UILabel = .init(text: "вопрос",
                                                        color: .white,
                                                        font: .systemFont(ofSize: 20),
                                                        bgColor: .anyColor)
    var outButton = UIButton(type: .system)
    var balanceLabel: UILabel = .init(text: "Банк: руб",
                                      color: .white,
                                      font: .systemFont(ofSize: 10),
                                      bgColor: .anyColor)
    var nameLabel: UILabel = .init(text: "Gamer",
                                   color: .black,
                                   font: .systemFont(ofSize: 20),
                                   bgColor: .blue.withAlphaComponent(0.4))
    
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
        bgSecondImageView.contentMode = .scaleAspectFill
       
        quastionsLabelText.clipsToBounds = true
        quastionsLabelText.sizeToFit()
        
        answerTableView.layer.cornerRadius = 12
//        answerTableView.backgroundColor = .blue.withAlphaComponent(0.3)
        answerTableView.backgroundColor = .clear
        
        //кнопка сдаться
        outButton.setTitle("Сдаться", for: .normal)
        outButton.titleLabel?.adjustsFontSizeToFitWidth = true
        outButton.tintColor = .white
        outButton.backgroundColor = .anyColor
        outButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        outButton.layer.cornerRadius = 12
        outButton.layer.shadowColor = UIColor.accent.cgColor

        
        // лейбл баланса
        balanceLabel.layer.masksToBounds = true
        balanceLabel.layer.shadowColor = UIColor.accent.cgColor
        balanceLabel.layer.shadowOpacity = 1
        balanceLabel.layer.shadowOffset = .init(width: 5, height: 5)
        balanceLabel.layer.shadowRadius = 4
        
        //Регистрируем ячейку 
        answerTableView.register(AnswerTableView.self, forCellReuseIdentifier: AnswerTableView.reuseID)
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
        // ТАБЛИЦА
        addSubview(answerTableView)
        answerTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            answerTableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            answerTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0),
            answerTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            answerTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            answerTableView.heightAnchor.constraint(equalToConstant: 300)

                ])
        // Текст вопроса
        addSubview(quastionsLabelText)
        quastionsLabelText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            quastionsLabelText.centerXAnchor.constraint(equalTo: centerXAnchor),
            quastionsLabelText.bottomAnchor.constraint(equalTo: answerTableView.topAnchor, constant: -1),
            quastionsLabelText.widthAnchor.constraint(equalToConstant: 300),
            quastionsLabelText.heightAnchor.constraint(equalToConstant: 200)
        ])
        // цена вопроса
        addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: quastionsLabelText.topAnchor, constant: -1)
        ])
        
//        Устанавливаем лейбл счетчика вопросов
        let stackCountLabelQuastionsNumber = UIStackView(views: [countLabelQuastionsNumberLabel, countLabelQuastionsTextLabel], axis: .vertical, spasing: 5 , alignment: .center)
        addSubview(stackCountLabelQuastionsNumber)
        stackCountLabelQuastionsNumber.translatesAutoresizingMaskIntoConstraints = false
        stackCountLabelQuastionsNumber.layer.borderWidth = 3.0
        stackCountLabelQuastionsNumber.layer.masksToBounds = true
        stackCountLabelQuastionsNumber.layer.cornerRadius = 75
        stackCountLabelQuastionsNumber.contentMode = .scaleAspectFit
        stackCountLabelQuastionsNumber.layer.backgroundColor = UIColor.anyColor.cgColor
        stackCountLabelQuastionsNumber.layer.borderColor = UIColor.startLabelColor.cgColor
        
        NSLayoutConstraint.activate([
            stackCountLabelQuastionsNumber.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackCountLabelQuastionsNumber.bottomAnchor.constraint(equalTo: priceLabel.topAnchor, constant: -7),
            stackCountLabelQuastionsNumber.widthAnchor.constraint(equalToConstant: 150),
            stackCountLabelQuastionsNumber.heightAnchor.constraint(equalToConstant: 150),
            countLabelQuastionsNumberLabel.heightAnchor.constraint(equalTo: countLabelQuastionsTextLabel.heightAnchor, constant: 50)
                ])

        
        // кнопка сдаться
        addSubview(outButton)
        outButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            outButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            outButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            outButton.widthAnchor.constraint(equalToConstant: 110),
            outButton.heightAnchor.constraint(equalToConstant: 37)
            
        ])
        
        //лейбл баланса
        addSubview(balanceLabel)
        balanceLabel.translatesAutoresizingMaskIntoConstraints = false
        balanceLabel.layer.cornerRadius = 12
        
        
        NSLayoutConstraint.activate([
            balanceLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
            balanceLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            balanceLabel.widthAnchor.constraint(equalToConstant: 110),
            balanceLabel.heightAnchor.constraint(equalToConstant: 37)
        ])
        
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.layer.cornerRadius = 12
        nameLabel.layer.masksToBounds = true
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: stackCountLabelQuastionsNumber.topAnchor, constant: -10),
            nameLabel.widthAnchor.constraint(equalTo: nameLabel.heightAnchor, constant: 50)
                ])
    }
}

#Preview {
    GameView()
}
