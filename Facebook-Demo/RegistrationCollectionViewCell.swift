//
//  RegistrationCollectionViewCell.swift
//  Facebook-Demo
//
//  Created by Ka Ho on 7/4/2016.
//  Copyright © 2016 Ka Ho. All rights reserved.
//

import UIKit

class RegistrationCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var pageImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        //gradient effect
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = UIScreen.mainScreen().bounds
        gradient.colors = [UIColor.whiteColor().colorWithAlphaComponent(0.2).CGColor, UIColor.blackColor().colorWithAlphaComponent(0.8).CGColor]
        pageImageView.layer.insertSublayer(gradient, atIndex: 0)
    }

}
