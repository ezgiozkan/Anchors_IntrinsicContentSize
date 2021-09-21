//
//  ViewController.swift
//  SafeAreaGuide
//
//  Created by Ezgi ÖZkan on 15.09.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       setupViews()
    }
    
    func setupViews(){
        
    let topLabel = makeLabel(withText: "top")
    let bottomLabel = makeLabel(withText: "bottom")
    let leadingLabel = makeLabel(withText: "Leading")
    let trailingLabel = makeLabel(withText: "Trailing")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        //constraints
    
        NSLayoutConstraint.activate([
        
            //toLAbel
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //bottomLabel
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            //leadingLabel
            leadingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            //trailing
            trailingLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        
        
        ])
       
    }
    func makeLabel(withText text: String) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 32)
        return label
        
    }


}

