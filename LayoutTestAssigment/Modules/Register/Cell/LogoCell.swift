//
//  LogoCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class LogoCell: UITableViewCell {

    @IBOutlet weak var logoLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        logoLable.sizeToFit()
        logoLable.font = UIFont.poppinsRegularBolt(36)
        logoLable.textColor = .logoColorTextRegisterView
        logoLable.letterSpace = 7
        

        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
