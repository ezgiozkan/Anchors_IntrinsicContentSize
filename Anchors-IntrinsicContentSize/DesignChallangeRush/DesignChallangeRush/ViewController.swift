//
//  ViewController.swift
//  DesignChallangeRush
//
//  Created by Ezgi ÖZkan on 21.09.2021.
//

import UIKit

class ViewController: UIViewController {

    let buttonHeight: CGFloat = 33
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }

    func setupViews(){
        
        
        let image1 = makeImageView(name: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let sublabel = makeSubLabel(withText: "rush * Moving Pictures (Roll Remester)")
        let button1 = makeSystemButton()
        let progressLabel1 = makeProgressLabel(withText: "0.20")
        let progressLabel2 = makeProgressLabel(withText: "0.33")
        let progressView = makeProgressView()
        let button2 = makeButton(withText: "Play on Spotify")
        
        
        
        view.addSubview(image1)
        view.addSubview(trackLabel)
        view.addSubview(sublabel)
        view.addSubview(button1)
        view.addSubview(progressLabel1)
        view.addSubview(progressLabel2)
        view.addSubview(progressView)
        view.addSubview(button2)
        
        
        NSLayoutConstraint.activate([
        
            image1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 8),
            image1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image1.heightAnchor.constraint(equalTo: image1.widthAnchor, multiplier: 1),
            image1.widthAnchor.constraint(equalToConstant: view.bounds.width),
          
            
            
            trackLabel.topAnchor.constraint(equalTo: image1.bottomAnchor,constant: 8),
            trackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            trackLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            sublabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: 8),
            sublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            sublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            
            button1.topAnchor.constraint(equalTo: sublabel.bottomAnchor,constant: 8),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 8),
            button1.heightAnchor.constraint(equalToConstant: buttonHeight),
            button1.widthAnchor.constraint(equalToConstant: buttonHeight),
            
            progressLabel1.centerYAnchor.constraint(equalTo: button1.centerYAnchor),
            progressLabel1.leadingAnchor.constraint(equalTo: button1.trailingAnchor,constant: 8),
            
            progressView.centerYAnchor.constraint(equalTo: button1.centerYAnchor),
            progressView.leadingAnchor.constraint(equalTo: progressLabel1.trailingAnchor, constant: 3),
            
            progressLabel2.centerYAnchor.constraint(equalTo: button1.centerYAnchor),
            progressLabel2.leadingAnchor.constraint(equalTo: progressView.trailingAnchor,constant:8),
            progressLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -8),
            
           button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 8),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.heightAnchor.constraint(equalToConstant: buttonHeight),
            button2.widthAnchor.constraint(equalToConstant: 160)
            
        
        
        ])
        
        
        
        
    }
    
    func makeImageView(name: String) -> UIImageView {
        
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        view.image = UIImage(named: name)
        
        view.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
        view.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
        
        return view
    
    }
    
    func makeTrackLabel(withText text: String) -> UILabel {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 17)
        label.textAlignment = .center
        
        return label
    }
    
    func makeSubLabel(withText text: String) -> UILabel {
        
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = text
        label.textColor = .gray
        label.textAlignment = .center
        
        return label
    }
    
    func makeProgressLabel(withText text: String) -> UILabel {
        
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10)
        label.text = text
        label.textColor = .gray
        
        return label
    }
    
    func makeProgressView() -> UIProgressView {
        
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.tintColor = .gray
        
        return progressView
    }
    
    func makeSystemButton() -> UIButton {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
       
        button.setImage(UIImage(named: "play-button"), for: .normal)

        return button
    }
  
    
    func makeButton(withText text: String) -> UIButton {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentEdgeInsets = UIEdgeInsets(top: 16, left: buttonHeight, bottom: 16, right: buttonHeight)
        button.backgroundColor = .spotiftGreen
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.layer.cornerRadius = buttonHeight / 2
    
        let attributedText = NSMutableAttributedString(string: text, attributes: [
        
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16),
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.kern: 1
        ])
        
        button.setAttributedTitle(attributedText, for: .normal)
        return button
    }
    

}

extension UIColor {
    
    static let spotiftGreen = UIColor(red: 28/255, green: 184/255, blue: 89/255, alpha: 1)
    }
