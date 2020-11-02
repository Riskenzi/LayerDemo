//
//  YearsCell.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 02.11.2020.
//

import UIKit

class YearsCell: UITableViewCell {

    @IBOutlet weak var collectionView: UICollectionView!
    
    private var array = [year]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        createArray()
        initCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func initCollectionView(){
        collectionView.registerCellFromNib(UINib.YearsCollectionCell)
        collectionView.allowsSelection = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .mainBackgroundColor
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
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
    
}
extension YearsCell : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let yearsCollection = collectionView.dequeueReusableCell(withReuseIdentifier: UINib.YearsCollectionCell, for: indexPath) as! YearsCollectionCell
        
        yearsCollection.titleYear.text = array[indexPath.row].text
        DispatchQueue.main.async {
            yearsCollection.progressView.setProgressValue(currentValue: self.array[indexPath.row].progress)
        }
        
        return yearsCollection
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
