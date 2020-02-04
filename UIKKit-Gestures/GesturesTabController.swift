//
//  GesturesTabController.swift
//  UIKKit-Gestures
//
//  Created by Kelby Mittan on 2/3/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class GesturesTabController: UITabBarController {
    
    public lazy var tapVC: TapGestureController = {
        
        let storyboard = UIStoryboard(name: "TapGesture", bundle: nil)
        
        guard let viewController = storyboard.instantiateViewController(identifier: "TapGestureController") as? TapGestureController else {
            fatalError("error")
        }
        
        viewController.tabBarItem = UITabBarItem(title: "Tap", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewController
    }()
    
    public lazy var swipeVC: SwipeGestureController = {
        let viewController = SwipeGestureController()
        viewController.tabBarItem = UITabBarItem(title: "Swipe", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [tapVC, swipeVC]
    }
    
}
