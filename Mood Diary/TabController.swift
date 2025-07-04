//
//  TabController.swift
//  Mood Diary
//
//  Created by Валерия Новикова on 03/07/2025.
//

import UIKit

class TabController: UITabBarController {
    
    let headerView = HeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHeaderView()
        setTabBarAppearance()
        setupTabs()
    }
    
    private func setupHeaderView() {
        view.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let headerViewConstraints = [
            headerView.topAnchor.constraint(equalTo: view.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 88)
        ]
        NSLayoutConstraint.activate(headerViewConstraints)
    }
    
    private func setTabBarAppearance() {
        tabBar.tintColor = .tabbarActive
        tabBar.unselectedItemTintColor = .tabbarInactive
        tabBar.backgroundColor = UIColor.appBackground
        let appearance = tabBar.standardAppearance
        appearance.backgroundColor = UIColor.appBackground
        tabBar.scrollEdgeAppearance = appearance
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
