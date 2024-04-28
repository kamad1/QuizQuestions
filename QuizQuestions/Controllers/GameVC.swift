
import UIKit

class GameVC: UIViewController {

    var secondView = GameView()
    var balance = 0
    var player: Player!
   var currentQuestionsIndex = 0
    var questins: [Quastion] = [.init(text: "1212", id: "", correctAnswer: "правильный ответ", questionNumber: "16", price: 1600, destructors: ["2024", "2023", "2023"], difficulty: .easy)]
    var answer = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(player.name)
        view = secondView
        addAction()
        setupGame()
        getQuestionsForGame()
        //указали кто будет источником данных
        secondView.answerTableView.dataSource = self
        secondView.answerTableView.delegate = self
    }
    
    // Создаю алерт для кнопки выйти
    func addAction() {
        let quitAction = UIAction { _ in
            // создаем сам лист на который все поместим
            let quitSheet = UIAlertController(title: "Вы точно хотите выйти?", message: nil, preferredStyle: .actionSheet)
            // добавим на нее 2 кнопки
            let yesAction = UIAlertAction(title: "Да", style: .destructive) { _ in
                self.dismiss(animated: true)
            }
            
            let noAction = UIAlertAction(title: "Нет", style: .cancel)
            // добавить 2 кнопки на сам quitSheet
            quitSheet.addAction(yesAction)
            quitSheet.addAction(noAction)
            // нужно теперь показать
            self.present(quitSheet, animated: true)
        }
        
        secondView.outButton.addAction(quitAction, for: .touchUpInside)
    }
    // функция получения вопроса
    func getQuestionsForGame() -> [Quastion]{
        let allQuestions = Quastion.mockData
        let easy = allQuestions.filter { $0.difficulty == .easy }.shuffled()[0..<5]
        let medium = allQuestions.filter { $0.difficulty == .medium }.shuffled()[0..<5]
        let hard = allQuestions.filter { $0.difficulty == .hard }.shuffled()[0..<5]
        var questins = easy
        questins.append(contentsOf: medium)
        questins.append(contentsOf: hard)
        return Array(questins)
        
    }
    

    func setupGame() {
        secondView.nameLabel.text = player.name
        secondView.balanceLabel.text = "Банк: \(balance) руб"
        //обновляем таблицу
        let quest = getQuestionsForGame()
        
        answer = questins[currentQuestionsIndex].answer
        answer = quest[0].destructors
        answer.append(quest[0].correctAnswer)
        
       
        secondView.quastionsLabelText.text = quest[0].text
        secondView.countLabelQuastionsNumberLabel.text = quest[0].questionNumber
        secondView.priceLabel.text = "Цена Вопроса: \(quest[0].price) руб"
        
        secondView.answerTableView.reloadData()
        
        
    }
    
    //action если ты победил
    func endGameAction() {
        let endAction = UIAction { _ in
            // создаем сам лист на который все поместим
            let quitSheet = UIAlertController(title: "Игра окончена\nВАШ РЕЗУЛЬТАТ: \(self.balance)", message: nil, preferredStyle: .actionSheet)
            // добавим на нее 2 кнопки
            let yesAction = UIAlertAction(title: "Начать заного", style: .destructive) { _ in
                self.dismiss(animated: true)
                
            }
            
           
            // добавить 2 кнопки на сам quitSheet
            quitSheet.addAction(yesAction)

            // нужно теперь показать
            self.present(quitSheet, animated: true)
            
        }
        secondView.outButton.addAction(endAction, for: .touchUpInside)
    
    }
    
    func correctStep() {
// проверку слова делаю в обработке ячейки
        //если слово верное то идем в этот метод если нет то отработает там метод конца игры
        
        balance += questins[0].price
        
        guard currentQuestionsIndex == 14 else {return }
        
        endGameAction()
        currentQuestionsIndex += 1
        
//        secondView.quastionsLabelText.text = questins[0].text
//        secondView.countLabelQuastionsNumberLabel.text = questins[0].questionNumber
//        secondView.priceLabel.text = "Цена Вопроса: \(questins[0].price) руб"
        
        secondView.answerTableView.reloadData()
    }
    
    
   
}

extension GameVC: UITableViewDataSource {
    //возвращает колличество ячеек в таблице
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let anwers = self.answer[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: AnswerTableView.reuseID) as! AnswerTableView
        cell.answerLabel.text = anwers
        return cell
    }
}

extension GameVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // не работает проверка правильного нажатия
//        guard questins[0].correctAnswer == answer[indexPath.row] else {return endGameAction()}
        correctStep()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
       
       return "Список ответов"
    }
}

//let i = AllQuastions.questions.randomElement()
//secondView.quastionsLabelText.text = i?[0].text
//secondView.countLabelQuastionsNumberLabel.text = i?[0].id
//secondView.priceLabel.text = "Цена вопроса:\(String(describing: i![0].price)) руб"
