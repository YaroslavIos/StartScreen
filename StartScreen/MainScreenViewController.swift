//
//  MainScreenViewController.swift
//  StartScreen
//
//  Created by Ярослав Любиченко on 4.6.2023.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    let filledButton = UIButton()
    let tintedButton = UIButton()
    let grayButton = UIButton()
    let plainButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        setFilledButton()
        setTintedButton()
    }
    
    func setFilledButton() {
        view.addSubview(filledButton)
        
        filledButton.configuration = .filled()
        filledButton.setTitle("Filled", for: .normal)
        filledButton.setTitleColor(.white, for: .normal)
        filledButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        filledButton.configuration?.imagePadding = 20
        filledButton.backgroundColor = .systemBackground
        
        filledButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            filledButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            filledButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            filledButton.widthAnchor.constraint(equalToConstant: 200),
            filledButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setTintedButton() {
        view.addSubview(tintedButton)
        
        tintedButton.configuration = .tinted()
        tintedButton.setTitle("Tinted", for: .normal)
        tintedButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        tintedButton.configuration?.imagePadding = 20
        tintedButton.setTitleColor(.white, for: .normal)
        tintedButton.backgroundColor = .systemBackground
        tintedButton.configuration?.buttonSize = .small
        
        tintedButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tintedButton.widthAnchor.constraint(equalToConstant: 200),
            tintedButton.heightAnchor.constraint(equalToConstant: 50),
            tintedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tintedButton.centerYAnchor.constraint(equalTo: filledButton.bottomAnchor, constant: 40)
        ])
    }
}
