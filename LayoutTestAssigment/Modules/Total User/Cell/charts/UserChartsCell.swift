//
//  UserChartsCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class UserChartsCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private var array = [year]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        createArray()
        initCollectionView()
        
    }
    
    private func createArray() {
        array.append(year(progress: 60, text: "2012"))
        array.append(year(progress: 40, text: "2013"))
        array.append(year(progress: 90, text: "2014"))
        array.append(year(progress: 40, text: "2015"))
        array.append(year(progress: 80, text: "2016"))
        array.append(year(progress: 30, text: "2017"))
        array.append(year(progress: 50, text: "2018"))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func initCollectionView(){
        
        collectionView.registerCellFromNib(UINib.ChartCell)
        let headerNib = UINib.init(nibName: UINib.HeaderCharts, bundle: nil)
        collectionView.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: UINib.HeaderCharts)
        collectionView.allowsSelection = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .mainBackgroundColor
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
        
    }
    
    private func initPopapsView() {
        let imageName = "popap"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame.origin.x = 110
        imageView.frame.origin.y = 60.0
        imageView.frame.size.height = 60
        imageView.frame.size.width = 80
        collectionView.addSubview(imageView)
        
        let label = UILabel()        
        label.frame.origin.x = 112
        label.frame.origin.y = 57.0
        label.frame.size.height = 60
        label.frame.size.width = 80
        
        label.text = "99 user"
        label.font = UIFont.poppinsRegular(6)
        label.textColor = .black
        label.textAlignment = .center
        collectionView.addSubview(label)
    }
    
}

extension UserChartsCell : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let chartCollection = collectionView.dequeueReusableCell(withReuseIdentifier: UINib.ChartCell, for: indexPath) as! ChartCell
        
        chartCollection.titleLable.text = array[indexPath.row].text
        DispatchQueue.main.async {
            chartCollection.progressView.setProgressValue(currentValue: self.array[indexPath.row].progress)
        
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.initPopapsView()
        }
        
       
        
        return chartCollection
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionHeader) {
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: UINib.HeaderCharts, for: indexPath) as! HeaderCharts
                // Customize headerView here
            headerView.title.text = "Chart Users"
            headerView.title.font = UIFont.poppinsRegularBolt(14)
            headerView.title.textColor = .white
            
            headerView.descLable.text = "In 2012 - 2018"
            headerView.descLable.font = UIFont.poppinsRegular(10)
            headerView.descLable.textColor = .white
         
            headerView.backgroundColor = .mainBackgroundColor
            headerView.buttonOutlet.setTitle("Type Chart", for: .normal)
            headerView.buttonOutlet.titleLabel?.font = UIFont.poppinsRegular(7)
            headerView.buttonOutlet.setImage(UIImage(named: "arrow"), for: .normal)
            headerView.buttonOutlet.makeRoundButton(10)
            headerView.buttonOutlet.backgroundColor = .collectionCellBackground
            
                return headerView
        }else {
            return UICollectionReusableView()
        }
        
    }
}

fileprivate class year {
    var progress : CGFloat
    var text : String
    
    init(progress : CGFloat, text : String) {
        self.progress = progress
        self.text = text
    }
}
