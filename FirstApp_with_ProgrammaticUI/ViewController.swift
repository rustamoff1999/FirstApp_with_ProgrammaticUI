//
//  ViewController.swift
//  FirstApp_with_ProgrammaticUI
//
//  Created by Fuad Rustamov on 01.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel = UILabel()
        let button = UIButton()
        let layout = view.safeAreaLayoutGuide//Safe Area representation
        
        view.backgroundColor = .white
        textLabel.text = "Hey Listen!"
        textLabel.numberOfLines = 0
        textLabel.textColor = .black
        view.addSubview(textLabel)//Add Label(It's also a view) into view
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false//If true, this will not allow to apply our constraints
        
        
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: layout.topAnchor, constant: 0),
            textLabel.leadingAnchor.constraint(equalTo: layout.leadingAnchor, constant: 5),
            textLabel.trailingAnchor.constraint(equalTo: layout.trailingAnchor, constant: 5)
        ])//Activates all constraints here
        
        button.setTitle("Answer!", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.centerXAnchor.constraint(equalTo: layout.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: layout.centerYAnchor).isActive = true
        
        button.addTarget(self, action: #selector(answerButtonTapped), for: .touchUpInside)
    }
    
    @objc func answerButtonTapped() {
        textLabel.text = "It's dangerous to walk in the forest alone, take this \u{2694}"
    }

}
