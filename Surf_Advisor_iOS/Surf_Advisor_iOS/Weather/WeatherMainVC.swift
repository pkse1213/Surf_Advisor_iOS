//
//  ViewController.swift
//  Surf_Advisor_iOS
//
//  Created by 박세은 on 23/05/2019.
//  Copyright © 2019 박세은. All rights reserved.
//

import UIKit

class WeatherMainVC: UIViewController {
    @IBOutlet weak var beachCollectionView: UICollectionView!
    @IBOutlet weak var calendarCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.calendarCollectionView.delegate = self
        self.calendarCollectionView.dataSource = self
        self.beachCollectionView.delegate = self
        self.beachCollectionView.dataSource = self
    }
}

extension WeatherMainVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        if collectionView == self.calendarCollectionView {
            if let dateCell = self.calendarCollectionView.dequeueReusableCell(withReuseIdentifier: "DateCell", for: indexPath) as? DateCollectionViewCell {
                cell = dateCell
            }
        } else if collectionView == self.beachCollectionView {
            if let beachCell = self.beachCollectionView.dequeueReusableCell(withReuseIdentifier: "BeachCell", for: indexPath) as? BeachCollectionViewCell {
                cell = beachCell
            }
        }
        return cell
    }
    
}
