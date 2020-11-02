//
//  Extension  + UIColor .swift
//  LayoutTestAssigment
//
//  Created by Valerii Melnykov on 01.11.2020.
//

import UIKit

extension UIColor {
    convenience init?(hex: String) {
        var chars = Array(hex.hasPrefix("#") ? hex.dropFirst() : hex[...])
        let red, green, blue, alpha: CGFloat
        switch chars.count {
        case 3:
            chars = chars.flatMap { [$0, $0] }
            fallthrough
        case 6:
            chars = ["F","F"] + chars
            fallthrough
        case 8:
            alpha = CGFloat(strtoul(String(chars[0...1]), nil, 16)) / 255
            red   = CGFloat(strtoul(String(chars[2...3]), nil, 16)) / 255
            green = CGFloat(strtoul(String(chars[4...5]), nil, 16)) / 255
            blue  = CGFloat(strtoul(String(chars[6...7]), nil, 16)) / 255
        default:
            return nil
        }
        self.init(red: red, green: green, blue:  blue, alpha: alpha)
    }
    
    static public let mainBackgroundColor : UIColor = UIColor.init(hex: "#1E1E2F")!
    
    //MARK: - Register
    static public let logoColorTextRegisterView: UIColor = UIColor.init(hex: "#1F8EF1")!
    static public let textFieldBackgroundColor : UIColor = UIColor.init(hex: "#383B50")!
    static public let textFieldTextColor : UIColor = UIColor.white
    static public let buttonBackgroudColor : UIColor = UIColor.init(hex: "#1F8EF1")!
    static public let buttonColorText : UIColor = UIColor.white
    
    //MARK: - Dashboard
    static public let collectionCellBackground: UIColor = UIColor.init(hex: "#383B50")!
    static public let progressValueColor: UIColor = UIColor.init(hex: "#1F8EF1")!
    static public let progressZeroColor: UIColor = UIColor.init(hex: "#45475C")!
    //#1F8EF1
}

