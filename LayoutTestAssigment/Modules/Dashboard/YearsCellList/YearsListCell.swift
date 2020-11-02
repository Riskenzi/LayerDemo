//
//  YearsListCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class YearsListCell: UITableViewCell {

    @IBOutlet weak var tableView: UITableView!
    
    private var array = [yearListItem]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.setupArray()
        self.setupTable()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupArray() {
        array.append(yearListItem(total: "$2,029", text: "Januay 01"))
        array.append(yearListItem(total: "$1,2", text: "Januay 02"))
        array.append(yearListItem(total: "$1,1", text: "Januay 03"))
        array.append(yearListItem(total: "$5,111", text: "Januay 04"))
        array.append(yearListItem(total: "$2,1", text: "Januay 05"))
        array.append(yearListItem(total: "$2,1", text: "Januay 06"))
        
    }
    
    private func setupTable() {
        
        self.tableView.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)
        self.tableView.registerCellFromNib(UINib.ListCell)
        let headerNib = UINib.init(nibName: UINib.YearsListHeaderView, bundle: Bundle.main)
        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: UINib.YearsListHeaderView)
        self.tableView?.separatorStyle = .none
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.tableView.backgroundColor = .mainBackgroundColor
        self.tableView.showsHorizontalScrollIndicator = false
        self.tableView.showsVerticalScrollIndicator = false
        self.contentView.backgroundColor = .mainBackgroundColor
    }
    
}

extension YearsListCell : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listCell = tableView.dequeueReusableCell(withIdentifier: UINib.ListCell, for: indexPath) as! ListCell
        if indexPath.row == 0 {
            listCell.topLine.isHidden = true
        }
        if (indexPath.row == array.count-1){
            listCell.bottomLine.isHidden = true
        }
        
        listCell.monthLable.text = array[indexPath.row].text
        listCell.monthTotal.text = array[indexPath.row].total
        return listCell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: UINib.YearsListHeaderView) as! YearsListHeaderView
        
        headerView.titleLable.text = "Daily Sales Results"
        headerView.descLable.text = "January 01 - 30"
        headerView.totalLable.text = "$10,190"
        
        headerView.titleLable.textColor = .white
        headerView.titleLable.font = UIFont.poppinsRegularBolt(15)
        
        headerView.descLable.textColor = .white
        headerView.descLable.font = UIFont.poppinsRegular(10)
        
        headerView.totalLable.textColor = .white
        headerView.totalLable.font = UIFont.poppinsRegularBolt(15)
        
        headerView.tintColor = .mainBackgroundColor
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 50
    }
    
    
}

fileprivate class yearListItem {
    var text : String
    var total : String
    
    init(total : String, text : String) {
        self.total = total
        self.text = text
    }
}

