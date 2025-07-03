//
//  TabController.swift
//  Mood Diary
//
//  Created by Валерия Новикова on 03/07/2025.
//

import UIKit

class TabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = .appAccent
        tabBar.unselectedItemTintColor = UIColor.darkGray
        tabBar.backgroundColor = UIColor.appBackground
        setupTabs()
    }
    
    private func setupTabs() {
        let today = createNav(with: NSLocalizedString("1", comment: ""), and: UIImage.checkmark, vc: MainViewController())
        let calendar = createNav(with: NSLocalizedString("2", comment: ""), and: UIImage.remove, vc: CalendarViewController())
        let settings = createNav(with: NSLocalizedString("3", comment: ""), and: UIImage.actions, vc: SettingsViewController())
        
        self.setViewControllers([today, calendar, settings], animated: true)
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        
        return nav
    }
}
