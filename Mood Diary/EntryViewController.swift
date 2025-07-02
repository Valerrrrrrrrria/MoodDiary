//
//  ViewController.swift
//  Mood Diary
//
//  Created by Валерия Новикова on 23/06/2025.
//

import UIKit

class EntryViewController: UIViewController {
    let entryView = EntryView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .appBackground
        
        entryView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(entryView)
        let entryViewConstraints = [
            entryView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            entryView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            entryView.topAnchor.constraint(equalTo: view.topAnchor),
            entryView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ]
        NSLayoutConstraint.activate(entryViewConstraints)
       
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
        // Do any additional setup after loading the view.
    }


}

