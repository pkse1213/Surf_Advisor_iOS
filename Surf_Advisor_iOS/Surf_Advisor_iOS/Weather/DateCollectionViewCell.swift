//
//  DateCollectionViewCell.swift
//  Surf_Advisor_iOS
//
//  Created by 박세은 on 05/06/2019.
//  Copyright © 2019 박세은. All rights reserved.
//

import UIKit

class DateCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    let weekday = ["일","월","화","수","목","금","토"]
    var date: Date! {
        didSet { setUpView() }
    }
    var row = 1
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    private func setUpView() {
        print(self.date)
        let calendar = Calendar.current
        let components = calendar.dateComponents([.month, .day, .weekday], from: date)
        
        if components.day == 1 || row == 0{
            self.monthLabel.text = "\(components.month!)월"
            self.monthLabel.isHidden = false
        } else {
            self.monthLabel.isHidden = true
        }
        
        if row == 0 {
            self.circleView.applyRadius(radius: self.circleView.frame.height/2)
            self.circleView.applyBorder(width: 1, color: #colorLiteral(red: 0.3529411765, green: 0.3647058824, blue: 0.3764705882, alpha: 1))
            self.circleView.backgroundColor = #colorLiteral(red: 0.3529411765, green: 0.3647058824, blue: 0.3764705882, alpha: 1)
            self.dateLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            self.circleView.applyRadius(radius: self.circleView.frame.height/2)
            self.circleView.applyBorder(width: 1, color: #colorLiteral(red: 0.3529411765, green: 0.3647058824, blue: 0.3764705882, alpha: 1))
            self.circleView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            self.dateLabel.textColor = #colorLiteral(red: 0.3529411765, green: 0.3647058824, blue: 0.3764705882, alpha: 1)
        }
        
        self.dateLabel.text = "\(components.day!)"
        self.dayLabel.text = weekday[components.weekday!-1]
    }
}
