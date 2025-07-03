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
        tabBar.tintColor = .tabbarActive
        tabBar.unselectedItemTintColor = .tabbarInactive
        tabBar.backgroundColor = UIColor.appBackground
        setupTabs()
    }
    
    private func setupTabs() {
        let today = createNav(with: NSLocalizedString("tabbar_today", comment: ""), and: UIImage.tabbarToday, vc: MainViewController())
        let calendar = createNav(with: NSLocalizedString("tabbar_calendar", comment: ""), and: UIImage.tabbarCalendar, vc: CalendarViewController())
        let settings = createNav(with: NSLocalizedString("tabbar_settings", comment: ""), and: UIImage.tabbarSettings, vc: SettingsViewController())
        
        self.setViewControllers([today, calendar, settings], animated: true)
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        return nav
    }
}
