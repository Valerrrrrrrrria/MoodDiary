//
//  EntryView.swift
//  Mood Diary
//
//  Created by Валерия Новикова on 02/07/2025.
//

import UIKit

class EntryView: UIView {
    
    let headerFont = UIFont(name: "SFCompactRounded-Ultralight", size: 40)
    
    private(set) lazy var headerView: UIImageView = {
        let imageView = UIImageView(image: UIImage(resource: .header))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private(set) lazy var logoImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(resource: .logo))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private(set) lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = NSLocalizedString("app_title", comment: "")
        titleLabel.font = headerFont
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.textColor = .appAccent
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    private(set) lazy var subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.text = NSLocalizedString("app_subtitle", comment: "")
        subtitleLabel.font = UIFont.systemFont(ofSize: 18)
        subtitleLabel.adjustsFontForContentSizeCategory = true
        subtitleLabel.textColor = .appText
        subtitleLabel.textAlignment = .center
        subtitleLabel.numberOfLines = 0
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        return subtitleLabel
    }()
    
    private func setSubviews() {
        addSubview(headerView)
        let headerViewConstraints = [
            headerView.topAnchor.constraint(equalTo: self.topAnchor),
            headerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            headerView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ]
        NSLayoutConstraint.activate(headerViewConstraints)
        
        addSubview(logoImageView)
        let logoImageViewConstraints = [
            logoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 36),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ]
        NSLayoutConstraint.activate(logoImageViewConstraints)
        
        addSubview(titleLabel)
        let titleLabelConstraints = [
            titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 0),
            titleLabel.centerXAnchor.constraint(equalTo: logoImageView.centerXAnchor)
        ]
        NSLayoutConstraint.activate(titleLabelConstraints)
        
        addSubview(subtitleLabel)
        let subtitleLabelConstraints = [
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 17),
            subtitleLabel.centerXAnchor.constraint(equalTo: titleLabel.centerXAnchor)
        ]
        NSLayoutConstraint.activate(subtitleLabelConstraints)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .appBackground
        
        setSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
