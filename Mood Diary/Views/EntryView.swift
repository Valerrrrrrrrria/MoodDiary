//
//  EntryView.swift
//  Mood Diary
//
//  Created by Валерия Новикова on 02/07/2025.
//

import UIKit

class EntryView: UIView {
    
    let headerFont = UIFont(name: "SFCompactRounded-Ultralight", size: 40)
    
    // MARK: - Subviews
    
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
    
    private(set) lazy var enteranceButton: UIButton = {
        let entBtn = UIButton(type: .system)
        entBtn.setTitle(NSLocalizedString("app_login", comment: ""), for: .normal)
        entBtn.setTitleColor(UIColor.appLightText, for: .normal)
        entBtn.backgroundColor = UIColor.appDarkGreen
        entBtn.layer.cornerRadius = 25
        entBtn.clipsToBounds = true
        entBtn.translatesAutoresizingMaskIntoConstraints = false
        return entBtn
    }()
    
    private(set) lazy var registrationButton: UIButton = {
        let regBtn = UIButton(type: .system)
        regBtn.setTitle(NSLocalizedString("app_registration", comment: ""), for: .normal)
        regBtn.setTitleColor(UIColor.appText, for: .normal)
        regBtn.backgroundColor = UIColor.appDarkBeige
        regBtn.layer.cornerRadius = 25
        regBtn.clipsToBounds = true
        regBtn.translatesAutoresizingMaskIntoConstraints = false
        return regBtn
    }()
    
    private(set) lazy var continueButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle(NSLocalizedString("app_continue", comment: ""), for: .normal)
        btn.setTitleColor(UIColor.appText, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .appBackground
        setSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
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
        
        addSubview(enteranceButton)
        let enteranceButtonConstraints = [
            enteranceButton.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 60),
            enteranceButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            enteranceButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            enteranceButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(enteranceButtonConstraints)
        
        addSubview(registrationButton)
        let registrationButtonConstraints = [
            registrationButton.topAnchor.constraint(equalTo: enteranceButton.bottomAnchor, constant: 12),
            registrationButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            registrationButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            registrationButton.heightAnchor.constraint(equalToConstant: 50)
        ]
        NSLayoutConstraint.activate(registrationButtonConstraints)
        
        addSubview(continueButton)
        let continueButtonConstraints = [
            continueButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -46),
            continueButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            continueButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ]
        NSLayoutConstraint.activate(continueButtonConstraints)
    }
}
