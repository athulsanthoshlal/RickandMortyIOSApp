//
//  ViewController.swift
//  RickandMortyApp
//
//  Created by Athul Santhosh Lal on 15/06/23.
//

import UIKit

//ii) Changed the Class name to RMTabViewController and assigned it to UITabViewController
final class RMTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //i) Setting up background color to the screen
        view.backgroundColor = .white
        
        //iv) Calling that function here
        setupTabs()
    }
    //iii) Calling a function here and naming it setupTabs. We are also making the function private to this class so that no other class can access it
    private func setupTabs () {
        
        //v) Inside this, we wana create instance of all the four Controllers and attach them to our TabBarContoller
        let characterVC = RMCharacterViewController ()
        let locationVC = RMLocationViewController ()
        let episodeVC = RMEpisodeViewController ()
        let settingsVC = RMSettingsViewController()
        
        //viii) We also want titles for all four of these
        characterVC.title = "Characters"
        locationVC.title = "Location"
        episodeVC.title = "Episode"
        settingsVC.title = "Settings"
        
        //xi) We are naming it to a larger title
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        //vii) We have to wrap each of the four in a Navigational Controller to specify a Heading to each of them
        let nav1 = UINavigationController (rootViewController: characterVC)
        let nav2 = UINavigationController (rootViewController: locationVC)
        let nav3 = UINavigationController (rootViewController: episodeVC)
        let nav4 = UINavigationController (rootViewController: settingsVC)
        
        //xii) We are giving a tabbar icon with title and image to the bottom of the screen. This makes tab bars visible with the title, bg image
        nav1.tabBarItem = UITabBarItem(title: "Characters",
                                       image: UIImage(systemName: "person"),
                                       tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Location",
                                       image: UIImage(systemName: "globe.americas"),
                                       tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episode",
                                       image: UIImage(systemName: "play.tv"),
                                       tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 4)
        
        //x) We are going to change the Title to larger title
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
                
        //vi) Now, we are going to attach these on our TabBarViewController. This setViewController is available as function in the UITabBarController. Also, animated:true ensure that the animation is activated for the ViewControllers
        setViewControllers(
            
            //ix) We need to add nav1-4 inside this array to call
            [nav1, nav2, nav3, nav4],
            animated: true
        )
    }
    
}
