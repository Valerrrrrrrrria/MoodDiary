//
//  ViewController.swift
//  Mood Diary
//
//  Created by Валерия Новикова on 23/06/2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appBackground
        
        loginView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginView)
        let loginViewConstraints = [
            loginView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            loginView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            loginView.topAnchor.constraint(equalTo: view.topAnchor),
            loginView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(loginViewConstraints)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loginView.continueButton.addTarget(self, action: #selector(continueTapped), for: .touchUpInside)
    }
    
    @objc func continueTapped() {
        let tabController = TabController()
        tabController.modalPresentationStyle = .fullScreen
        self.present(tabController, animated: true)
    }
}

