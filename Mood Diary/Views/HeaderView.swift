//
//  headerView.swift
//  Mood Diary
//
//  Created by Валерия Новикова on 03/07/2025.
//

import UIKit

class HeaderView: UIView {
    
    let headerFont = UIFont(name: "SFCompactRounded-Ultralight", size: 17)
    
    private(set) lazy var title: UILabel = {
        let title = UILabel()
        title.text = NSLocalizedString("app_title", comment: "")
        title.textColor = .appText
        title.font = headerFont
        title.adjustsFontForContentSizeCategory = true
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private(set) lazy var logo: UIImageView = {
        let logo = UIImageView(image: UIImage(resource: .logo))
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .appHeader
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(title)
        let titleConstraints = [
            title.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            title.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ]
        NSLayoutConstraint.activate(titleConstraints)
        
        addSubview(logo)
        let logoConstraints = [
            logo.centerYAnchor.constraint(equalTo: title.centerYAnchor),
            logo.leadingAnchor.constraint(equalTo: title.leadingAnchor, constant: -27),
            logo.heightAnchor.constraint(equalToConstant: 20),
            logo.widthAnchor.constraint(equalToConstant: 20)
        ]
        NSLayoutConstraint.activate(logoConstraints)
    }
}
