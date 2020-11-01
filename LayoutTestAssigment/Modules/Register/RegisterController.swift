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
        initTableView()
        // Do any additional setup after loading the view.
    }
    
    
    func initTableView() -> Void {
        _ = self.delegate
    }

}
