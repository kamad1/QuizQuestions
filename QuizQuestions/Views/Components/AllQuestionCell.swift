

import UIKit

class AllQuestionCell: UITableViewCell {
    static let reuseID: String = "AllQuestionCell"
   
    
    let questionLabel = UILabel(text: "ANSWERS1", font: .boldSystemFont(ofSize: 20), bgColor: .anyColor)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
        senConstreints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViews() {
        questionLabel.textAlignment = .left
        
        backgroundColor = .anyColor
        
    }
    
    func senConstreints() {
        addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.backgroundColor = .clear
        
        
        NSLayoutConstraint.activate([
            questionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}
