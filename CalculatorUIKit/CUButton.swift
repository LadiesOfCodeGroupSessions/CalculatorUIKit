//
//  CUButton.swift
//  CalculatorUIKit
//
//  Created by Maria Kharybina on 29/03/2023.
//

import UIKit

class CUButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(buttonText: String, color: UIColor, width: CGFloat) {
        
        super.init(frame: .zero)
        configuration = .tinted()
        
        configuration?.title = buttonText
        configuration?.baseForegroundColor = .label
        configuration?.baseBackgroundColor = color
        configuration?.cornerStyle = .large
     
        accessibilityIdentifier = "button" + (buttonText )

        translatesAutoresizingMaskIntoConstraints = false
        
    }

}
