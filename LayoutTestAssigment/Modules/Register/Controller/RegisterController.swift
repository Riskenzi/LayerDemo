//
//  RegisterController.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class RegisterController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    lazy var delegate: RegisterDatasource = {
        return .init(self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        initTableView()
        // Do any additional setup after loading the view.
    }
    
    private func setupNavigationBar() {
        let menuButton = UIBarButtonItem(image: UIImage(named: "back_button"), style: .plain, target: self, action: #selector(back(sender:)))
        menuButton.tintColor = .white
        self.navigationItem.leftBarButtonItems = [menuButton]
    }
    
    @objc func back(sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated:true)
    }
    
    
    func initTableView() -> Void {
        _ = self.delegate
    }

}
