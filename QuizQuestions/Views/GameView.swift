import UIKit

class GameView: UIView {

    lazy var bgSecondImageView = UIImageView(image: .bgScreen2)
    var answerButton1: UIButton = .init(title: "ответ 1")
    var answerButton2: UIButton = .init(title: "ответ 2")
    var answerButton3: UIButton = .init(title: "ответ 3")
    var answerButton4: UIButton = .init(title: "ответ 4")
    var quastionsLabelText = UILabel()
    var priceLabel = UILabel()
    var countLabelQuastionsNumberLabel = UILabel()
    var countLabelQuastionsTextLabel = UILabel()
    var outButton = UIButton(type: .system)
    var balanceLabel = UILabel()
    var nameLabel = UILabel()
    
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
       
        quastionsLabelText.text = "ТУТ будут ВОПРОСЫ! которые подтянем из сети или из массива"
        quastionsLabelText.textColor = .black
        quastionsLabelText.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        quastionsLabelText.numberOfLines = 0
        quastionsLabelText.lineBreakMode = .byWordWrapping
        quastionsLabelText.textAlignment = .center
        quastionsLabelText.clipsToBounds = true
        quastionsLabelText.sizeToFit()
        
        priceLabel.text = "Цена Вопроса: (ТУТ будет цена) руб"
        priceLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 11)
        
        nameLabel.text = "Gamer"
        nameLabel.textAlignment = .center
        nameLabel.backgroundColor = .anyColor
        nameLabel.textColor = .white
        
        answerButton1.tintColor = .white
        answerButton2.tintColor = .white
        answerButton3.tintColor = .white
        answerButton4.tintColor = .white
        answerButton1.titleLabel?.adjustsFontSizeToFitWidth = true
        answerButton2.titleLabel?.adjustsFontSizeToFitWidth = true
        answerButton3.titleLabel?.adjustsFontSizeToFitWidth = true
        answerButton4.titleLabel?.adjustsFontSizeToFitWidth = true
        answerButton1.backgroundColor = .anyColor
        answerButton2.backgroundColor = .anyColor
        answerButton3.backgroundColor = .anyColor
        answerButton4.backgroundColor = .anyColor
        answerButton1.layer.shadowColor = UIColor.accent.cgColor
        answerButton2.layer.shadowColor = UIColor.accent.cgColor
        answerButton3.layer.shadowColor = UIColor.accent.cgColor
        answerButton4.layer.shadowColor = UIColor.accent.cgColor

        
        // Лейбл счетчика вопросов
        countLabelQuastionsNumberLabel.text = "1"
        countLabelQuastionsNumberLabel.textColor = .white
        countLabelQuastionsNumberLabel.textAlignment = .center
        countLabelQuastionsNumberLabel.numberOfLines = 0
        countLabelQuastionsNumberLabel.lineBreakMode = .byWordWrapping
        countLabelQuastionsNumberLabel.font = .systemFont(ofSize: 70)
        countLabelQuastionsNumberLabel.layer.backgroundColor = UIColor.anyColor.cgColor
        
        
        countLabelQuastionsTextLabel.text = "вопрос"
        countLabelQuastionsTextLabel.textColor = .white
        countLabelQuastionsTextLabel.textAlignment = .center
        countLabelQuastionsTextLabel.numberOfLines = 0
        countLabelQuastionsTextLabel.lineBreakMode = .byWordWrapping
        countLabelQuastionsTextLabel.font = .systemFont(ofSize: 20)
        countLabelQuastionsTextLabel.layer.backgroundColor = UIColor.anyColor.cgColor
        
        //кнопка сдаться
        outButton.setTitle("Сдаться", for: .normal)
        outButton.titleLabel?.adjustsFontSizeToFitWidth = true
        outButton.tintColor = .white
        outButton.backgroundColor = .anyColor
        outButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        outButton.layer.cornerRadius = 12
        outButton.layer.shadowColor = UIColor.accent.cgColor

        
        // лейбл баланса
        balanceLabel.text = "Банк: руб"
        balanceLabel.textColor = .white
        balanceLabel.backgroundColor = .anyColor
        balanceLabel.textAlignment = .center
        balanceLabel.font = .systemFont(ofSize: 10)
        balanceLabel.layer.masksToBounds = true
        balanceLabel.layer.shadowColor = UIColor.accent.cgColor
        balanceLabel.layer.shadowOpacity = 1
        balanceLabel.layer.shadowOffset = .init(width: 5, height: 5)
        balanceLabel.layer.shadowRadius = 4
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
            stackButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0),
            stackButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 10),
            stackButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10)
            
        ])
        
        addSubview(quastionsLabelText)
        quastionsLabelText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            quastionsLabelText.centerXAnchor.constraint(equalTo: centerXAnchor),
            quastionsLabelText.bottomAnchor.constraint(equalTo: stackButton.topAnchor, constant: -30),
            quastionsLabelText.widthAnchor.constraint(equalToConstant: 300),
            quastionsLabelText.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        addSubview(priceLabel)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            priceLabel.bottomAnchor.constraint(equalTo: quastionsLabelText.topAnchor, constant: -10)
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
            stackCountLabelQuastionsNumber.bottomAnchor.constraint(equalTo: priceLabel.topAnchor, constant: -15),
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
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: stackCountLabelQuastionsNumber.topAnchor, constant: -15),
            nameLabel.heightAnchor.constraint(equalTo: nameLabel.heightAnchor, constant: 50)
                ])
    }
    
    
}

#Preview {
    GameView()
}
