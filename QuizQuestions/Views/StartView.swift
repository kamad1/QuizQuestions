
import UIKit

class StartView: UIView {
    // MARK: - Элементы интерфейса
    lazy var bgImageView = UIImageView(image: .bgMain)
    let titleLabel = UILabel()
    let myNameTF = UITextField(placeholder: "Введите ваше имя...")
    let startButton: UIButton = .init(title: "Старт!")
    let addQuestionButton: UIButton = .init(title: "Добавить вопросы")
    

    init() {
        super.init(frame: .zero)
        setViews()
        setConstraints()
    }
    // MARK: - Внешний вид элементов
    func setViews() {
        //настройка внешняя заднего фона
        backgroundColor = .white
        bgImageView.contentMode = .scaleAspectFit
        // настройка внешнего вида кнопки
        startButton.tintColor = .white
        startButton.backgroundColor = UIColor.startButtonColor.withAlphaComponent(0.8)
        startButton.layer.shadowColor = UIColor.startButtonColor.cgColor
        
        addQuestionButton.tintColor = .white
        addQuestionButton.backgroundColor = UIColor.startButtonColor.withAlphaComponent(0.8)
        addQuestionButton.layer.shadowColor = UIColor.startButtonColor.cgColor
        // Настройка внешнего вида лейбла
        titleLabel.text = "О, Счастливчик!"
        titleLabel.font = .boldSystemFont(ofSize: 30)
        titleLabel.textColor = .startLabelColor
        titleLabel.layer.shadowColor = UIColor.startLabelColor.cgColor
        titleLabel.layer.shadowOpacity = 1
        titleLabel.layer.shadowOffset = .init(width: 5, height: 5)
        titleLabel.layer.shadowRadius = 4
        
    }
    // MARK: - Геометрия элементов
    func setConstraints() {
        // Картинка- геометрия
        self.addSubview(bgImageView)
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        
        // Добавим Лейбел
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Создал стэк для текст филда и кнопки - НИЖЕ код закомичен и внесен сюда так как есть расширение настройки стэка
        let stack = UIStackView(views: [myNameTF, startButton, addQuestionButton],
                                axis: .vertical,
                                spasing: 18,
                                alignment: .fill)
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stack.centerXAnchor.constraint(equalTo: centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: centerYAnchor),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40)
        ])
        
        NSLayoutConstraint.activate([
            bgImageView.topAnchor.constraint(equalTo: topAnchor),
            bgImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bgImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            bgImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
        ])
        
        // настройка кнопки высоты
        startButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        addQuestionButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // настройка лейбла
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: stack.topAnchor, constant: -150)
        ])
        
//        addSubview(addQuestionButton)
//        addQuestionButton.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

#Preview {
    StartView()
}
