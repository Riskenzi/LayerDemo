//
//  RegisterDatasource.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class RegisterDatasource: NSObject {
    
    weak var controller : RegisterController!
    // MARK: - Life cycle
    
    init(_ controller: RegisterController) {
        super.init()
        
        self.controller = controller
        self.setupTable()
    }
    
    private func setupTable() {
        
        controller.tableView.contentInset = UIEdgeInsets(top: 35, left: 0, bottom: 0, right: 0)
        controller.tableView?.registerCellFromNib(UINib.TextFieldCell)
        controller.tableView?.registerCellFromNib(UINib.logoCell)
        controller.tableView.registerCellFromNib(UINib.ButtonRegisterCell)
        controller.tableView?.separatorStyle = .none
        controller.tableView?.delegate = self
        controller.tableView?.dataSource = self
    }


}
extension RegisterDatasource : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TextFieldCell = tableView.dequeueReusableCell(withIdentifier: UINib.TextFieldCell, for: indexPath) as! TextFieldCell
        let LogoCell = tableView.dequeueReusableCell(withIdentifier: UINib.logoCell, for: indexPath) as! LogoCell
        let ButtonCell = tableView.dequeueReusableCell(withIdentifier: UINib.ButtonRegisterCell, for: indexPath) as! ButtonRegisterCell
        
        switch indexPath.row {
        case 0:
            LogoCell.logoLable.text = "Register"
            return LogoCell
            
        case 1:
            TextFieldCell.textField.placeholder = "Name"
            return TextFieldCell
        case 2:
            TextFieldCell.textField.placeholder = "Email"
            return TextFieldCell
        case 3:
            TextFieldCell.textField.placeholder = "Username"
            return TextFieldCell
        case 4:
            TextFieldCell.textField.placeholder = "Password"
            TextFieldCell.textField.isSecureTextEntry = true
            return TextFieldCell
        case 5:
            TextFieldCell.textField.placeholder = "Confirm Password"
            TextFieldCell.textField.isSecureTextEntry = true
            return TextFieldCell
        case 6:
            ButtonCell.buttonRegOut.setTitle("REGISTER", for: .normal)
            return ButtonCell
        default:
            return UITableViewCell()
        }
    }
        
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

