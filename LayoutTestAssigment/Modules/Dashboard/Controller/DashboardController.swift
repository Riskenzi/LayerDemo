//
//  DashboardController.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class DashboardController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    lazy var delegate: DashboardDatasource = {
        return .init(self)
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        initTableView()
        setupNavigationBar()
        self.view.backgroundColor = .mainBackgroundColor
        
              
    }
    
  
    
    func initTableView() -> Void {
        _ = self.delegate
    }
    
    private func setupNavigationBar() {
        let menuButton = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(back(sender:)))
        menuButton.tintColor = .white
        
        let DashboardLabel = UILabel()
        DashboardLabel.text = "Dashboard"
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
