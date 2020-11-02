//
//  TotalUserDatasource.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class TotalUserDatasource: NSObject {
    weak var controller : TotalUserController!
    // MARK: - Life cycle
    
    init(_ controller: TotalUserController) {
        super.init()
        
        self.controller = controller
        self.setupTable()
    }
    
    private func setupTable() {
        
        controller.tableView.contentInset = UIEdgeInsets(top: 41, left: 0, bottom: 0, right: 0)
        controller.tableView?.registerCellFromNib(UINib.TotalUserCell)
        controller.tableView?.separatorStyle = .none
        controller.tableView?.delegate = self
        controller.tableView?.dataSource = self
        controller.tableView.backgroundColor = .mainBackgroundColor
        controller.tableView.showsHorizontalScrollIndicator = false
        controller.tableView.showsVerticalScrollIndicator = false
        controller.view.backgroundColor = .mainBackgroundColor
        controller.tableView.allowsSelection = false
    }
}
extension TotalUserDatasource : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let totalUserCell = tableView.dequeueReusableCell(withIdentifier: UINib.TotalUserCell, for: indexPath) as! TotalUserCell
        
        switch indexPath.row {
        case 0:
            totalUserCell.targerLable.text = "Total Users Now"
            totalUserCell.lessLable.text  = "Less 1000 Users"
            totalUserCell.targerLable.text = "Target 2000 Users"
            totalUserCell.descLable.text = "Lorem Ipsum is simply dummy text of the print ing and type setting industry. Lorem Ipsum has been the industry's."
            return totalUserCell
        default:
            return UITableViewCell()
        }
    }
    
    
}
