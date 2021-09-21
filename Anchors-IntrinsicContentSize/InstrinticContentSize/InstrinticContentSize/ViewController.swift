//
//  ViewController.swift
//  InstrinticContentSize
//
//  Created by Tacettin Pekin on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews()
    {
        //let label1 = makeLabel(withText: "lorem ipsum dolar sitamet lorem ipsum dolar sitamelorem ipsum dolar sitame lorem ipsum dolar sitame lorem ipsum dolar sitame lorem ipsum dolar sitame lorem ipsum dolar sitame lorem ipsum dolar sitame lorem ipsum dolar sitame")
        let nameLabel = makeLabel(withText: "Name")
        let textField1 = makeTextField(withPlaceholderText: "Enter name here")
        
       // view.addSubview(label1)
        view.addSubview(nameLabel)
        view.addSubview(textField1)
        
        NSLayoutConstraint.activate([
            
           // label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
           // label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8)
            
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            
            textField1.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8),
            textField1.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor),
            textField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8)
           
        ])
        nameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
    }

    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        label.numberOfLines = 10
        return label
        
    }
    
    func makeTextField(withPlaceholderText text: String) -> UITextField {
        
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .gray
        
        return textField
        
    }

}
class BigLabel: UILabel {
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 300)
    }
}

