//
//  CardCollectionCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class CardCollectionCell: UICollectionViewCell {
    
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var userCountLable: UILabel!
    
    @IBOutlet weak var targetUserCountLable: UILabel!
    
    @IBOutlet weak var lessUserLable: UILabel!
    
    @IBOutlet weak var progressStatView: CircularProgressBar!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupLables()
        setupProgressCircle()
        setupAppearances()
    }
    
    private func setupLables() {
        titleLable.text = "Total Users Now"
        titleLable.letterSpace =  1
        titleLable.textColor = .white
        titleLable.font = UIFont.poppinsRegular(13)
        
        userCountLable.text = "1000 User"
        userCountLable.textColor = .white
        userCountLable.font = UIFont.poppinsRegular(25)
        
        targetUserCountLable.text = "Target Users 2000 user"
        targetUserCountLable.textColor = .white
        targetUserCountLable.font = UIFont.poppinsRegular(10)
        
        lessUserLable.text = "less 1000 user "
        lessUserLable.textColor = .white
        lessUserLable.font = UIFont.poppinsRegular(10)
    }
    
    private func setupAppearances() {
        contentView.backgroundColor = .collectionCellBackground
        contentView.layer.cornerRadius = 4.0
        contentView.layer.borderWidth = 2.0
        contentView.layer.borderColor = UIColor.clear.cgColor
    }
    
    private func setupProgressCircle(){

        progressStatView.safePercent = 100
        
        progressStatView.lineColor = .progressValueColor
        progressStatView.lineBackgroundColor = .progressZeroColor
        progressStatView.backgroundColor = .clear
        
        DispatchQueue.main.async {
            self.progressStatView.setProgress(to: 0.5, withAnimation: true)
        }
    }
}
