

import UIKit

class GameView: UIView {

    
    lazy var bgSecondImageView = UIImageView(image: .bgScreen2)
    var answerButton1 = UIButton(type: .system)
    var answerButton2 = UIButton(type: .system)
    var answerButton3 = UIButton(type: .system)
    var answerButton4 = UIButton(type: .system)
    var quastionsLabelText = UILabel()
    var priceLabel = UILabel()
    var countLabelQuastions = UILabel()
    var outButton = UIButton(type: .system)
    var balanceLabel = UILabel()
    
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
        
        answerButton1.setTitle("ответ 1", for: .normal)
        answerButton2.setTitle("ответ 2", for: .normal)
        answerButton3.setTitle("ответ 3", for: .normal)
        answerButton4.setTitle("ответ 4", for: .normal)
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
        countLabelQuastions.text = "(№ вопроса)"
        countLabelQuastions.textColor = .white
        countLabelQuastions.textAlignment = .center
        countLabelQuastions.numberOfLines = 0
        countLabelQuastions.lineBreakMode = .byWordWrapping
        countLabelQuastions.font = .systemFont(ofSize: 38)
        countLabelQuastions.layer.backgroundColor = UIColor.anyColor.cgColor
        countLabelQuastions.layer.borderColor = UIColor.startLabelColor.cgColor
        
        //кнопка сдаться
        outButton.setTitle("Сдаться", for: .normal)
        outButton.titleLabel?.adjustsFontSizeToFitWidth = true
        outButton.tintColor = .white
        outButton.backgroundColor = .anyColor
        outButton.titleLabel?.font = UIFont.systemFont(ofSize: 10)
        outButton.layer.cornerRadius = 12
        outButton.layer.shadowColor = UIColor.accent.cgColor
//        outButton.layer.shadowOpacity = 1
//        outButton.layer.shadowOffset = .init(width: 5, height: 5)
//        outButton.layer.shadowRadius = 4
        
        // лейбл баланса
        balanceLabel.text = "Банк: (сумма)руб"
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
        addSubview(countLabelQuastions)
        countLabelQuastions.translatesAutoresizingMaskIntoConstraints = false
        countLabelQuastions.layer.borderWidth = 3.0
        countLabelQuastions.layer.masksToBounds = true
        countLabelQuastions.layer.cornerRadius = 75
 
        NSLayoutConstraint.activate([
            countLabelQuastions.centerXAnchor.constraint(equalTo: centerXAnchor),
            countLabelQuastions.bottomAnchor.constraint(equalTo: priceLabel.topAnchor, constant: -15),
            countLabelQuastions.widthAnchor.constraint(equalToConstant: 150),
            countLabelQuastions.heightAnchor.constraint(equalToConstant: 150)
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
    }
}
