//
//  Extension + UIFont.swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit
extension UIFont {
    
    static public func poppinsRegular(_ size: CGFloat = 16.0) -> UIFont {
        return UIFont(name: "Poppins-Regular", size: size)!
    }
    static public func poppinsRegularBolt(_ size: CGFloat = 16.0) -> UIFont {
        return UIFont(name: "Poppins-Bold", size: size)!
    }
}
