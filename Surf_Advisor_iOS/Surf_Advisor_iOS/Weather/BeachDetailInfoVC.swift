//
//  BeachDetailInfoVC.swift
//  Surf_Advisor_iOS
//
//  Created by 박세은 on 07/06/2019.
//  Copyright © 2019 박세은. All rights reserved.
//

import UIKit

class BeachDetailInfoVC: UIViewController {
    @IBOutlet weak var beachNameView: UIView!
    @IBOutlet weak var beachInfoView: UIView!
    @IBOutlet weak var surfInfoView: UIView!
    @IBOutlet weak var surfDetailInfoView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "상세기상정보"
        self.beachInfoView.applyRadius(radius: 5)
        self.surfInfoView.applyRadius(radius: 5)
        self.beachNameView.applyRadius(radius: 5)
        self.surfDetailInfoView.applyRadius(radius: 5)
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
