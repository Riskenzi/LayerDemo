//
//  ChartCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class ChartCell: UICollectionViewCell {
    
    @IBOutlet weak var progressView: VerticalProgressView!
    
    @IBOutlet weak var titleLable: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupAppearances()
    }
    
    private func setupAppearances() {
        progressView.initBar()
        progressView.setBackColor(color: .progressZeroColor)
        progressView.setProgressColor(color: .progressValueColor)
        
        titleLable.font = UIFont.poppinsRegular(10)
        titleLable.sizeToFit()
        titleLable.textColor = .white
    }

}
