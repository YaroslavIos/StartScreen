//
//  ViewController.swift
//  StartScreen
//
//  Created by Ярослав Любиченко on 29.5.2023.
//

import UIKit

class StartScreenViewController: UIViewController {
    let mainText = UILabel()
    let secondText = UILabel()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(
            red: 0.106,
            green: 0.157,
            blue: 0.082,
            alpha: 1
        )
        
        setUIView()
        setButton()
    }
    
    private func setUIView() {
        view.addSubview(mainText)
        
        mainText.text = "Jameson"
        mainText.textColor = UIColor(
            red: 0.945,
            green: 0.902,
            blue: 0.698,
            alpha: 1
        )
        mainText.font = .systemFont(ofSize: 64)
        mainText.textAlignment = .center
        
        mainText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mainText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainText.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        view.addSubview(secondText)
        
        secondText.text = "The power of taste"
        secondText.textColor = UIColor(
            red: 0.945,
            green: 0.902,
            blue: 0.698,
            alpha: 1
        )
        secondText.font = .systemFont(ofSize: 28)
        secondText.textAlignment = .center
        
        secondText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            secondText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondText.centerYAnchor.constraint(equalTo: mainText.bottomAnchor, constant: 10)
        ])
    }
    
    private func setButton() {
        view.addSubview(button)
        
        button.configuration = .filled()
        button.setTitle("Discover", for: .normal)
        button.setTitleColor(UIColor(
            red: 0.106,
            green: 0.157,
            blue: 0.082,
            alpha: 1
        ), for: .normal)
        button.layer.cornerRadius = 12
        button.configuration?.baseBackgroundColor = UIColor(
            red: 0.945,
            green: 0.902,
            blue: 0.698,
            alpha: 1
        )
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
            button.centerYAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
        ])
    }
}
