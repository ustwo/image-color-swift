//
//  ViewController.swift
//  UIImageColor
//
//  Created by Shagun Madhikarmi on 19/02/2016.
//  Copyright © 2016 ustwo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate(set) var button: UIButton = UIButton()


    // MARK: - View Lifecycle

    override func viewDidLoad() {

        super.viewDidLoad()

        title = "UIImage+Color"

        setupButton()

        // Create image from color

        let image = UIImage.imageFromColor(UIColor.blue)
        let highlightedImage = UIImage.imageFromColor(UIColor.purple)

        button.setBackgroundImage(image, for: UIControlState())
        button.setBackgroundImage(highlightedImage, for: .highlighted)

        // Create image from color with custom sizes

        let navigationBarBackgroundImage = UIImage.imageFromColor(UIColor.gray, width: 1.0, height: 2.0)
        let navigationBarShadowImage = UIImage.imageFromColor(UIColor.black.withAlphaComponent(0.8), width: 1.0, height: 2.0)

        navigationController?.navigationBar.shadowImage = navigationBarShadowImage
        navigationController?.navigationBar.setBackgroundImage(navigationBarBackgroundImage, for: .default)
    }


    // MARK: - Setup

    fileprivate func setupButton() {

        button.setTitle("Button", for: UIControlState())
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.clipsToBounds = true
        button.layer.cornerRadius = 5.0
        button.adjustsImageWhenHighlighted = false
        view.addSubview(button)

        button.translatesAutoresizingMaskIntoConstraints = false

        let constraints = [
            NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: button.superview, attribute: .centerX, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: button.superview, attribute: .centerY, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 44.0),
            NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100.0)
        ]

        view.addConstraints(constraints)
    }
}
