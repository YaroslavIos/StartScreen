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
    let borderedButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        setFilledButton()
        setTintedButton()
        setGrayButton()
        setPlainButton()
        setBorderedButton()
    }
    
    // MARK: - Set a UI view of Filled Button.
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
    
    // MARK: - Set a UI view of Tinted Button.
    func setTintedButton() {
        view.addSubview(tintedButton)
        
        tintedButton.configuration = .tinted()
        tintedButton.setTitle("Tinted", for: .normal)
        tintedButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        tintedButton.configuration?.imagePadding = 20
        tintedButton.setTitleColor(.white, for: .normal)
        tintedButton.backgroundColor = .systemBackground
        
        tintedButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tintedButton.widthAnchor.constraint(equalToConstant: 200),
            tintedButton.heightAnchor.constraint(equalToConstant: 50),
            tintedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            tintedButton.centerYAnchor.constraint(equalTo: filledButton.bottomAnchor, constant: 40)
        ])
    }
    
    // MARK: - Set a UI view of Gray Button.
    func setGrayButton() {
        view.addSubview(grayButton)
        
        grayButton.configuration = .gray()
        grayButton.setTitle("Gray", for: .normal)
        grayButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        grayButton.configuration?.imagePadding = 20
        grayButton.setTitleColor(.white, for: .normal)
        grayButton.backgroundColor = .systemBackground
        
        grayButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            grayButton.widthAnchor.constraint(equalToConstant: 200),
            grayButton.heightAnchor.constraint(equalToConstant: 50),
            grayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            grayButton.centerYAnchor.constraint(equalTo: tintedButton.bottomAnchor, constant: 40)
        ])
    }
    
    //MARK: - Set a UI view of Plain Button.
    func setPlainButton() {
        view.addSubview(plainButton)
        
        plainButton.configuration = .plain()
        plainButton.setTitle("Plain", for: .normal)
        plainButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        plainButton.configuration?.imagePadding = 20
        plainButton.setTitleColor(.white, for: .normal)
        plainButton.setTitleColor(.systemGreen, for: .highlighted)
        plainButton.backgroundColor = .systemBackground
        
        plainButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            plainButton.widthAnchor.constraint(equalToConstant: 200),
            plainButton.heightAnchor.constraint(equalToConstant: 50),
            plainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            plainButton.centerYAnchor.constraint(equalTo: grayButton.bottomAnchor, constant: 40)
        ])
    }
    
    // MARK: - Set a UI view of Bordered Button.
    func setBorderedButton() {
        view.addSubview(borderedButton)
        
        borderedButton.configuration = .bordered()
        borderedButton.setTitle("Boarded", for: .normal)
        borderedButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        borderedButton.configuration?.imagePadding = 20
        borderedButton.layer.borderWidth = 2
        borderedButton.layer.borderColor = .init(red: 255, green: 105, blue: 93, alpha: 1)
        borderedButton.layer.cornerRadius = 16
        
        borderedButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            borderedButton.widthAnchor.constraint(equalToConstant: 200),
            borderedButton.heightAnchor.constraint(equalToConstant: 50),
            borderedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            borderedButton.centerYAnchor.constraint(equalTo: plainButton.bottomAnchor, constant: 40)
        ])
    }
}
