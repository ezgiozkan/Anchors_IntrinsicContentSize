//
//  ViewController.swift
//  demo3
//
//  Created by Ezgi ÖZkan on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       setupViews()
    }
    
    func setupViews() {
        
        let image = makeImageView(named: "rush")
        let label = makeLabel(withText: "Title")
        let button = makeButton(withText: "Get Started")
        
        view.addSubview(image)
        view.addSubview(label)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
     
            
            image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8),
            
            label.topAnchor.constraint(equalTo: image.bottomAnchor,constant: 8),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 300),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -16),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        ])
     
        
    }
    
    func makeImageView(named: String) -> UIImageView {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: named)
        
        view.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
        return view
    }
    
    func makeLabel(withText text: String)-> UILabel {
    
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 32)
        label.backgroundColor = .yellow
        
        return label
    
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle(text, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        return button
    }


}

