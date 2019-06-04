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
    @IBOutlet weak var listBtnImageView: UIImageView!
    var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        // uicollectionview
        self.calendarCollectionView.delegate = self
        self.calendarCollectionView.dataSource = self
        self.beachCollectionView.delegate = self
        self.beachCollectionView.dataSource = self
        
        // uicollectionviewcell
        let dateNibName = UINib(nibName: "DateCollectionViewCell", bundle: nil)
        self.calendarCollectionView.register(dateNibName, forCellWithReuseIdentifier: "DateCell")
        let beachNibName = UINib(nibName: "BeachCollectionViewCell", bundle: nil)
        self.beachCollectionView.register(beachNibName, forCellWithReuseIdentifier: "BeachCell")
        
        // imageview gesture
        let listTapGesture = UITapGestureRecognizer(target: self, action: #selector(listBtnTapped(_:)))
        self.listBtnImageView.addGestureRecognizer(listTapGesture)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @objc func listBtnTapped(_: UIImageView){
        let vc = UIStoryboard(name: "Weather", bundle: nil).instantiateViewController(withIdentifier: "BeachListVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension WeatherMainVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 40
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        if collectionView == self.calendarCollectionView {
            if let dateCell = self.calendarCollectionView.dequeueReusableCell(withReuseIdentifier: "DateCell", for: indexPath) as? DateCollectionViewCell {
                dateCell.row = indexPath.row
                dateCell.date = self.date + TimeInterval(86400*indexPath.row)
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
