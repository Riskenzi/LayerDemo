//
//  TotalUserController.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class TotalUserController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .mainBackgroundColor
        setupNavigationBar()
        // Do any additional setup after loading the view.
    }
    
    private func setupNavigationBar() {
        let menuButton = UIBarButtonItem(image: UIImage(named: "back_button"), style: .plain, target: self, action: #selector(back(sender:)))
        menuButton.tintColor = .white
        
        let DashboardLabel = UILabel()
        DashboardLabel.text = "Total Users"
        DashboardLabel.font = UIFont.poppinsRegular(19)
        DashboardLabel.textAlignment = .left
        DashboardLabel.textColor = .white
        let lableTitle = UIBarButtonItem.init(customView: DashboardLabel)
        
        
        self.navigationItem.leftBarButtonItems = [menuButton,lableTitle]
        
        let notifyImage = UIImageView()
        notifyImage.image = UIImage(named: "notification")
        let profileImage = UIImageView()
        profileImage.image = UIImage(named: "profile")
        let notifyButton = UIBarButtonItem.init(customView: notifyImage)
        notifyButton.tintColor = .white
        let profileButton = UIBarButtonItem.init(customView: profileImage)
        profileButton.tintColor = .white
        let space = UIBarButtonItem.init(customView: UIView())
        space.width = 20
        
        self.navigationItem.rightBarButtonItems = [profileButton,space,notifyButton]
    }
    
    @objc func back(sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated:true)
    }

}
