//
//  ViewController.swift
//  Configuration
//
//  Created by Ezgi ÖZkan on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let margin: CGFloat =  20
    let spacing: CGFloat =  32

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupNavigationBar()
        setupViews()
    }
    
    func setupNavigationBar() {
        
        navigationItem.title  = "Playback"
    
    }

    func setupViews() {
        
        let offlineLabel = makeLabel(withText: "Offline")
        let offlineSwitch = makeSwitch(isOne: false)
        let offlineSubLabel = makeLabel(withText: "Lorem ipsum dolar sit amet, lorem ipsum")
        
        let crossfadeLabel = makeLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeLabel(withText: "0s")
        let crossfadeMaxLabel = makeLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        let gaplessPlaybackLabel = makeLabel(withText: "Gappless Playback")
        let gaplessPlaybackSwitch = makeSwitch(isOne: true)
        
        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        let hideSongsSwitch = makeSwitch(isOne: true)
        
        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        let enableNormalizationSwitch = makeSwitch(isOne: true)
      
        
        
        view.addSubview(offlineLabel)
        view.addSubview(offlineSwitch)
        view.addSubview(offlineSubLabel)
        view.addSubview(crossfadeLabel)
        view.addSubview(crossfadeMinLabel)
        view.addSubview(crossfadeMaxLabel)
        view.addSubview(crossfadeProgressView)
        view.addSubview(gaplessPlaybackLabel)
        view.addSubview(gaplessPlaybackSwitch)
        view.addSubview(hideSongsLabel)
        view.addSubview(hideSongsSwitch)
        view.addSubview(enableNormalizationLabel)
        view.addSubview(enableNormalizationSwitch)
        
        
        //MARK - Constants
        NSLayoutConstraint.activate([
        
        
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: margin),
            offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
            
            offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
            
            offlineSubLabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor,constant: margin),
            offlineSubLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
            offlineSubLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
            
            crossfadeLabel.topAnchor.constraint(equalTo:offlineSubLabel.bottomAnchor,constant: spacing),
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor,constant: spacing),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
            
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4),
            
            crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
            
            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor,constant: spacing),
            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
            
            gaplessPlaybackSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor),
            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
            
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor,constant: spacing),
            hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: margin),
            
            hideSongsSwitch.centerYAnchor.constraint(equalTo: gaplessPlaybackLabel.centerYAnchor),
            hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -margin),
            
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: spacing),
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            
            enableNormalizationSwitch.centerYAnchor.constraint(equalTo: enableNormalizationLabel.centerYAnchor),
            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin)
            
            
        
        
        
        ])
        
     
        
        
        
        
        
    }

    //MARK: -Factories
    
    func makeLabel(withText text:String) -> UILabel {
    
         let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
      
        
        return label
    }
    
    func makeSubLabel(withText text: String) -> UILabel {
         let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 13)
        label.numberOfLines = 0
        
        return label
    }
    
    func makeBoldLabel(withText text: String) -> UILabel {
         let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 17)
        
        return label
    }
    
    func makeSwitch(isOne: Bool) -> UISwitch {
        let theSwitch = UISwitch()
        theSwitch.translatesAutoresizingMaskIntoConstraints = false
        theSwitch.isOn = isOne
        
        return theSwitch
    }
    
    
    func makeProgressView() -> UIProgressView {
        
        let progressView = UIProgressView(progressViewStyle: .default)
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.tintColor = .gray
        return progressView
        
    }
    
}

