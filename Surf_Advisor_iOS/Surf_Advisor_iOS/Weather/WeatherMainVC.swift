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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.beachCollectionView.delegate = self
        self.beachCollectionView.dataSource = self
    }
}

extension WeatherMainVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if let beachCell = beachCollectionView.dequeueReusableCell(withReuseIdentifier: "beachCollectionViewCell", for: indexPath) as? beachCollectionViewCell {
            cell = beachCell
        }
        return cell
    }
    
}
