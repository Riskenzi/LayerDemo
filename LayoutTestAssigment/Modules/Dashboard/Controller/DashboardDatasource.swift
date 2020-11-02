//
//  DashboardDatasource.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class DashboardDatasource: NSObject {
    weak var controller : DashboardController!
    // MARK: - Life cycle
    
    init(_ controller: DashboardController) {
        super.init()
        
        self.controller = controller
        self.setupTable()
    }
    
    
    private func setupTable() {
        
        controller.tableView.contentInset = UIEdgeInsets(top: 41, left: 0, bottom: 0, right: 0)
        controller.tableView?.registerCellFromNib(UINib.StatisticCell)
        controller.tableView.registerCellFromNib(UINib.YearsCell)
        controller.tableView.registerCellFromNib(UINib.YearsListCell)
        controller.tableView?.separatorStyle = .none
        controller.tableView?.delegate = self
        controller.tableView?.dataSource = self
        controller.tableView.backgroundColor = .mainBackgroundColor
        controller.tableView.showsHorizontalScrollIndicator = false
        controller.tableView.showsVerticalScrollIndicator = false
    }
    
}

extension DashboardDatasource : UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let statisticCell = tableView.dequeueReusableCell(withIdentifier: UINib.StatisticCell, for: indexPath) as! StatisticCell
        
        let yearsCell = tableView.dequeueReusableCell(withIdentifier: UINib.YearsCell, for: indexPath) as! YearsCell
        
        let yearsListCell = tableView.dequeueReusableCell(withIdentifier: UINib.YearsListCell, for: indexPath) as! YearsListCell
        
        switch indexPath.row {
        case 0:
            return statisticCell
        case 1:
            return yearsCell
        case 2:
            return yearsListCell
        default:
            return UITableViewCell()
        }
    }
}
