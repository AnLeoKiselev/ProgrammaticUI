//
//  ViewController.swift
//  ProgrammaticUI
//
//  Created by Anatoliy on 28.10.2022.
//

import UIKit

// https://www.youtube.com/watch?v=_U6_l58Cv4E&list=PL8seg1JPkqgG3822Pbf_H9xldrODNV3XI

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        view.backgroundColor = .systemBackground
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true //big title
        print ("Done")
    }

    func setupButton () {
        view.addSubview(nextButton)
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Next"
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside) //touchUpInside - обычное состояние кнопки
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        nextButton.widthAnchor.constraint(equalToConstant: 200),
        nextButton.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }

    @objc func goToNextScreen () {
        let nextScreen = SecondScreen()
        nextScreen.title = "Second Screen"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

