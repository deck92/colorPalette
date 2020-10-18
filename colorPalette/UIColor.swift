//
//  UIColor.swift
//  colorPalette
//
//  Created by lpk on 18.10.2020.
//

import UIKit

extension UIColor {
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
       self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}

