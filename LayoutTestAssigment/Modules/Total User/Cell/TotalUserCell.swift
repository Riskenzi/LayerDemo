//
//  TotalUserCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class TotalUserCell: UITableViewCell {
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var progressView: CircularProgressBar!
    
    @IBOutlet weak var targerView: UIView!
    @IBOutlet weak var targerLable: UILabel!
    
    @IBOutlet weak var lessView: UIView!
    @IBOutlet weak var lessLable: UILabel!
    
    @IBOutlet weak var descLable: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        setupAppearances()
        setupView()
        setupProgressCircle()
    }
    
    private func setupView() {
        
        titleLable.textColor = .white
        titleLable.font = UIFont.poppinsRegularBolt(15)
        
        targerLable.textColor = .white
        targerLable.font = UIFont.poppinsRegular(9)
        
        lessLable.textColor = .white
        lessLable.font = UIFont.poppinsRegular(9)
        
        descLable.textColor = .white
        descLable.font = UIFont.poppinsRegular(10)
        
        
        targerView.layer.cornerRadius = targerView.frame.size.width/2
        targerView.clipsToBounds = true

        targerView.layer.borderColor = UIColor.clear.cgColor
        targerView.layer.borderWidth = 5.0
        targerView.backgroundColor = .progressValueColor
        
        
        lessView.layer.cornerRadius = lessView.frame.size.width/2
        lessView.clipsToBounds = true

        lessView.layer.borderColor = UIColor.clear.cgColor
        lessView.layer.borderWidth = 5.0
        
        lessView.backgroundColor = .progressValueColor
        
        self.progressView.backgroundColor = .clear
        self.progressView.lineColor = .progressValueColor
        
        
        DispatchQueue.main.async {
            self.progressView.setProgress(to: 0.5, withAnimation: true)
        }
    }
    
    private func setupAppearances() {
        contentView.backgroundColor = .collectionCellBackground
        contentView.layer.cornerRadius = 4.0
        contentView.layer.borderWidth = 2.0
        contentView.layer.borderColor = UIColor.clear.cgColor
    }
    
    private func setupProgressCircle(){

        progressView.safePercent = 100
        
        progressView.lineColor = .progressValueColor
        progressView.lineBackgroundColor = .progressZeroColor
        progressView.backgroundColor = .clear
        progressView.lineWidth  = 15
        DispatchQueue.main.async {
            self.progressView.setProgress(to: 0.5, withAnimation: true, users: "User")
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
