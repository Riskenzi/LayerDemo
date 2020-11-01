//
//  ButtonRegisterCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class ButtonRegisterCell: UITableViewCell {

    @IBOutlet weak var buttonRegOut: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        buttonRegOut.backgroundColor = .buttonBackgroudColor
        buttonRegOut.setTitle("REGISTER", for: .normal)
        buttonRegOut.setTitleColor(.buttonColorText, for: .normal)
        buttonRegOut.titleLabel?.font = UIFont.poppinsRegular(20)
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func buttonReg(_ sender: Any) {
        print(#function)
    }
    
}
