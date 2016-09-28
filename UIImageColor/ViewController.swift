//
//  ViewController.swift
//  UIImageColor
//
//  Created by Shagun Madhikarmi on 19/02/2016.
//  Copyright © 2016 ustwo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private(set) var button: UIButton!


    override func viewDidLoad() {

        super.viewDidLoad()

        self.title = "UIImage+Color"

        self.setupButton()

        // Create image from color 

        let image = UIImage.imageFromColor(UIColor.blueColor())
        let highlightedImage = UIImage.imageFromColor(UIColor.purpleColor())

        button.setBackgroundImage(image, forState: .Normal)
        button.setBackgroundImage(highlightedImage, forState: .Highlighted)

        // Create image from color with custom sizes

        let navigationBarBackgroundImage = UIImage.imageFromColor(UIColor.grayColor(), width: 1.0, height: 2.0)
        let navigationBarShadowImage = UIImage.imageFromColor(UIColor.blackColor().colorWithAlphaComponent(0.8), width: 1.0, height: 2.0)

        self.navigationController?.navigationBar.shadowImage = navigationBarShadowImage
        self.navigationController?.navigationBar.setBackgroundImage(navigationBarBackgroundImage, forBarMetrics: .Default)
    }


    // MARK: - Setup

    private func setupButton() {

        button = UIButton()
        button.setTitle("Button", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 5.0
        button.adjustsImageWhenHighlighted = false
        view.addSubview(button)

        button.translatesAutoresizingMaskIntoConstraints = false

        let constraints = [
            NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: button.superview, attribute: .CenterX, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: .CenterY, relatedBy: .Equal, toItem: button.superview, attribute: .CenterY, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .Height, multiplier: 1.0, constant: 44.0),
            NSLayoutConstraint(item: button, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .Width, multiplier: 1.0, constant: 100.0)
        ]
        view.addConstraints(constraints)
    }
}

