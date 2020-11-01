//
//  TextFieldCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

class TextFieldCell: UITableViewCell {

    @IBOutlet weak var textField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textField.placeHolderColor = UIColor.textFieldTextColor
        textField.textColor = UIColor.textFieldTextColor
        textField.backgroundColor = UIColor.textFieldBackgroundColor
        textField.font = UIFont.poppinsRegular(18)
        textField.layer.cornerRadius = 4.0
        textField.layer.borderWidth = 2.0
        textField.layer.borderColor = UIColor.clear.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
