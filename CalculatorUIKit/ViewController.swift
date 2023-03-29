//
//  ViewController.swift
//  CalculatorUIKit
//
//  Created by Maria Kharybina on 22/03/2023.
//

import UIKit

class ViewController: UIViewController {

    let displayLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        createUI()
    }
    
    func createUI() {
        createLabel()
        createButton(buttonText: "1")
    }
    
    func createLabel() {
        view.addSubview(displayLabel)
        displayLabel.backgroundColor = .white
        displayLabel.layer.cornerRadius = 16
        displayLabel.textColor = .label
        displayLabel.text = "000"
        displayLabel.accessibilityIdentifier = "displayLabel"
        displayLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            displayLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            displayLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            displayLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
    }
    
    func createButton(buttonText: String?) {
        let button = UIButton()
        let config = UIButton.Configuration.filled()
        
        view.addSubview(button)
        button.layer.cornerRadius = 16
        button.configuration = config
        button.setTitle(buttonText, for: .normal)
        button.accessibilityIdentifier = "button" + (buttonText ?? "?")
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: displayLabel.bottomAnchor, constant: 10),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

