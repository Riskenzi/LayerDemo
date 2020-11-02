//
//  ListCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class ListCell: UITableViewCell {
    
    enum stateLine {
        case top
        case bottom
        case topAndBottom
    }
    
    
    @IBOutlet weak var monthLable: UILabel!
    
    
    @IBOutlet weak var monthTotal: UILabel!
    
    @IBOutlet weak var topLine: UIView!
    
    @IBOutlet weak var centerCircle: UIView!
    
    @IBOutlet weak var bottomLine: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        monthLable.textColor = .white
        monthLable.font = UIFont.poppinsRegular(14)
        
        monthTotal.textColor = .white
        monthTotal.font = UIFont.poppinsRegularBolt(13)
        
        centerCircle.layer.cornerRadius = centerCircle.frame.size.width/2
        centerCircle.clipsToBounds = true

        centerCircle.layer.borderColor = UIColor.clear.cgColor
        centerCircle.layer.borderWidth = 5.0
        
        centerCircle.backgroundColor = .progressValueColor
        bottomLine.backgroundColor = .progressZeroColor
        
        topLine.backgroundColor = .progressZeroColor
        
        contentView.backgroundColor = .mainBackgroundColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
