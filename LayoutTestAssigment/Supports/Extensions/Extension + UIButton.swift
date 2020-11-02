//
//  Extension + UIButton.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

extension UIButton {
    
    public func makeRoundButton(_ cornerRadius: CGFloat) -> Void {
        self.clipsToBounds = true
        self.layer.masksToBounds = false
        self.layer.cornerRadius = cornerRadius
    }
}
