//
//  ViewController.swift
//  CalculatorUIKit
//
//  Created by Maria Kharybina on 22/03/2023.
//

import UIKit

class ViewController: UIViewController {

    let displayLabel = UILabel()
    let buttonOne = CUButton(buttonText: "1", color: .blue, width: 50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        createUI()
    }
    
    func createUI() {
        createLabel()
        createButtonOne()
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
    
    func createButtonOne() {
        view.addSubview(buttonOne)
        
        buttonOne.addTarget(self, action: #selector(buttonOneTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonOne.topAnchor.constraint(equalTo: displayLabel.bottomAnchor, constant: 10),
            buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            buttonOne.widthAnchor.constraint(equalToConstant: 50),
            buttonOne.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func buttonOneTapped() {
        displayLabel.text = buttonOne.titleLabel?.text
    }
    
    
}

