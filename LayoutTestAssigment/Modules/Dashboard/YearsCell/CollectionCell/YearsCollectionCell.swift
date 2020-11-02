//
//  YearsCollectionCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class YearsCollectionCell: UICollectionViewCell {
    
    
    @IBOutlet weak var progressView: VerticalProgressView!
    
    @IBOutlet weak var titleYear: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupAppearances()
    }

    
    private func setupAppearances() {
        progressView.initBar()
        progressView.setBackColor(color: .progressZeroColor)
        progressView.setProgressColor(color: .progressValueColor)
        
        titleYear.font = UIFont.poppinsRegular(10)
        titleYear.sizeToFit()
        titleYear.textColor = .white
    }
}
