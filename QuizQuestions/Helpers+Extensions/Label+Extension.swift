
import UIKit

extension UILabel {
    convenience init(text: String,
                     color: UIColor = .white,
                     font: UIFont,
                     bgColor: UIColor) {
        self.init()
        self.text = text
        self.textColor = color
        self.font = font
        self.backgroundColor = bgColor
        textAlignment = .center
        numberOfLines = 0
        lineBreakMode = .byWordWrapping
    }
    
}





