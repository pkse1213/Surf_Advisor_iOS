//
//  BeachCollectionViewCell.swift
//  Surf_Advisor_iOS
//
//  Created by 박세은 on 31/05/2019.
//  Copyright © 2019 박세은. All rights reserved.
//

import UIKit

class BeachCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var beachNameLabel: UILabel!
    @IBOutlet weak var levelInfoLabel: UILabel!
    @IBOutlet weak var surfInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.applyRadius(radius: 3)
    }

}
