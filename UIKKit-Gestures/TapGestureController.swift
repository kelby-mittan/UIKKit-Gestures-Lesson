//
//  TapGestureController.swift
//  UIKKit-Gestures
//
//  Created by Kelby Mittan on 2/3/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class TapGestureController: UIViewController {
    
    @IBOutlet var heartImageView: UIImageView!
    
    // 1: configure tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
//        gesture.numberOfTapsRequired = 1
//        gesture.numberOfTouchesRequired = 1
        return gesture
    }()
    
    private var heartIsEmpty = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemTeal
        
        // 2: add the gesture to the image view
        heartImageView.isUserInteractionEnabled = true
        heartImageView.addGestureRecognizer(tapGesture)
    }
    
    
    // 3: we need a selector (method) that gets called
    @objc private func didTap(_ gesture: UITapGestureRecognizer) {
        if heartIsEmpty {
            heartImageView.image = UIImage(systemName: "heart.fill")
            heartIsEmpty.toggle()
        } else {
            heartImageView.image = UIImage(systemName: "heart")
            heartIsEmpty.toggle()
        }
        
    }
    
}
