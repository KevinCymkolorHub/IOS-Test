//
//  File.swift
//  test
//
//  Created by CymmetrikDev2 on 2023/2/15.
//

import Foundation
import UIKit

class CustFont {
    
    var font1: UIFont {
        return UIFont(name: "PingFang SC Light", size: 17)!
    }
}

class test1Label: UILabel {
    
    var font1: UIFont {
        return UIFont(name: "PingFangTC-Medium", size: 18)!
    }

    override func layoutSubviews() {
        self.font = font1
        self.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.6)
    }
}

class test2Label: UILabel {
    
    var font2: UIFont {
        return UIFont(name: "PingFangTC-Medium", size: 24)!
    }

    override func layoutSubviews() {
        self.font = font2
    }
}

class test31Label: UILabel {

    override func layoutSubviews() {
        self.font = UIFont(name: self.font.fontName, size: 36)
    }
}


