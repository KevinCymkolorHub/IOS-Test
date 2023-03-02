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
        self.textColor = UIColor.systemYellow
    }
}

class test31Label: UILabel {

    override func layoutSubviews() {
        self.font = UIFont(name: self.font.fontName, size: 36)
    }
}

class test1Button : UIButton {
    
//    required init() {
//        // set myValue before super.init is called
//        super.init(frame: .zero)
//
//        // set other operations after super.init, if required
//        setTitleColor(UIColor.black, for: .normal)
//    }

    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        
        setTitleColor(UIColor(named: "ColorTest1"), for: .normal)
        setTitleColor(UIColor.red, for: .disabled)
        backgroundColor = UIColor(named: "ColorTest3")
    }
    
}


protocol MyAppFontName {
    
    var myTitle1Medium: UIFont { get }
    var myTitle2Medium: UIFont { get }
    var myLabel1Medium: UIFont { get }
    var myLabel2Medium: UIFont { get }
    var myTitle1Regular: UIFont { get }
    var myTitle2Regular: UIFont { get }
    var myParagraph1Regular: UIFont { get }
    var myParagraph2Regular: UIFont { get }
    var myParagraph3Regular: UIFont { get }
    var myBtnFont1: UIFont { get }
}

class AppChineseFont : MyAppFontName {
    
    let myTitle1Medium = UIFont(name: "PingFangTC-Medium", size: 24)!
    let myTitle2Medium = UIFont(name: "PingFangTC-Medium", size: 20)!
    let myLabel1Medium = UIFont(name: "PingFangTC-Medium", size: 17)!
    let myLabel2Medium = UIFont(name: "PingFangTC-Medium", size: 15)!
    let myTitle1Regular = UIFont(name: "PingFangTC-Regular", size: 24)!
    let myTitle2Regular = UIFont(name: "PingFangTC-Regular", size: 20)!
    let myParagraph1Regular = UIFont(name: "PingFangTC-Regular", size: 17)!
    let myParagraph2Regular = UIFont(name: "PingFangTC-Regular", size: 15)!
    let myParagraph3Regular = UIFont(name: "PingFangTC-Regular", size: 13)!
    let myBtnFont1 = UIFont(name: "PingFangTC-Semibold", size: 16)!
}

class AppEnglishFont : MyAppFontName {
    
    let myTitle1Medium = UIFont.systemFont(ofSize: 24, weight: .medium)
    let myTitle2Medium = UIFont.systemFont(ofSize: 20, weight: .medium)
    let myLabel1Medium = UIFont.systemFont(ofSize: 17, weight: .medium)
    let myLabel2Medium = UIFont.systemFont(ofSize: 15, weight: .medium)
    let myTitle1Regular = UIFont.systemFont(ofSize: 24, weight: .regular)
    let myTitle2Regular = UIFont.systemFont(ofSize: 20, weight: .regular)
    let myParagraph1Regular = UIFont.systemFont(ofSize: 17, weight: .regular)
    let myParagraph2Regular = UIFont.systemFont(ofSize: 15, weight: .regular)
    let myParagraph3Regular = UIFont.systemFont(ofSize: 13, weight: .regular)
    let myBtnFont1 = UIFont.systemFont(ofSize: 16, weight: .semibold)
}

extension UIFont {
    private static var _myFontFactory: MyAppFontName?
    private static var myFontFactory: MyAppFontName {
        if(Bundle.main.preferredLocalizations[0].contains("en")) {
            
            if(self._myFontFactory == nil) {
                self._myFontFactory = AppEnglishFont()
            }
            
            return self._myFontFactory!
        }
        else {
            
            if(self._myFontFactory == nil) {
                self._myFontFactory = AppChineseFont()
            }
            
            return self._myFontFactory!
        }
    }
    
    static var myTitle1Medium: UIFont { return self.myFontFactory.myTitle1Medium }
    static var myTitle2Medium: UIFont { return self.myFontFactory.myTitle2Medium }
    static var myLabel1Medium: UIFont { return self.myFontFactory.myLabel1Medium }
    static var myLabel2Medium: UIFont { return self.myFontFactory.myLabel2Medium }
    static var myTitle1Regular: UIFont { return self.myFontFactory.myTitle1Regular }
    static var myTitle2Regular: UIFont { return self.myFontFactory.myTitle2Regular }
    static var myParagraph1Regular: UIFont { return self.myFontFactory.myParagraph1Regular }
    static var myParagraph2Regular: UIFont { return self.myFontFactory.myParagraph2Regular }
    static var myParagraph3Regular: UIFont { return self.myFontFactory.myParagraph3Regular }
    static var myBtnFont1: UIFont { return self.myFontFactory.myBtnFont1 }
}


@IBDesignable class genericLabel: UILabel {

    @IBInspectable var myFontTypeface: String = "" {
        didSet {
            
            var myFont: UIFont
            switch myFontTypeface {
            case "myTitle1Medium":
                myFont = UIFont.myTitle1Medium
            case "myTitle2Medium":
                myFont = UIFont.myTitle2Medium
            case "myLabel1Medium":
                myFont = UIFont.myLabel1Medium
            case "myLabel2Medium":
                myFont = UIFont.myLabel2Medium
            case "myTitle1Regular":
                myFont = UIFont.myTitle1Regular
            case "myTitle2Regular":
                myFont = UIFont.myTitle2Regular
            case "myParagraph1Regular":
                myFont = UIFont.myParagraph1Regular
            case "myParagraph2Regular":
                myFont = UIFont.myParagraph2Regular
            case "myParagraph3Regular":
                myFont = UIFont.myParagraph3Regular
            case "myBtnFont1":
                myFont = UIFont.myBtnFont1
            default:
                fatalError("genericLabel IBInspectable myFontTypeface value not mapping")
            }
            
            self.font = myFont
        }
    }
    
    override func layoutSubviews() {
    }
}

