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
}

