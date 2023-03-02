//
//  AppDelegate.swift
//  test
//
//  Created by CymmetrikDev2 on 2022/11/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let locale = NSLocale.autoupdatingCurrent
        let code = locale.languageCode! // en | zh
        let language = locale.localizedString(forLanguageCode: code)! // English | 中文
        
        for family in UIFont.familyNames.sorted() {
            print("Family: \(family)")
            
            // 2
            let names = UIFont.fontNames(forFamilyName: family)
            for fontName in names {
                print("- \(fontName)")
            }
        }
        
        let fontDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: .body).withDesign(.default)! // 系統 font
        let font1 = UIFont(descriptor: fontDescriptor, size: 0)
        let font2 = UIFont(name:"PingFang TC", size: 17) // customize font
        
        let font3 = UIFont.preferredFont(forTextStyle: .headline).withSize(20) // 系統 font
        let font4 = UIFont.systemFont(ofSize: 20, weight: .semibold) // 系統 font
        
        UISegmentedControl.appearance().backgroundColor = UIColor.red
//        UISegmentedControl.appearance().layer.borderColor = UIColor.white.cgColor
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
//        UISegmentedControl.appearance().layer.borderWidth = 1        
        
//        UITabBar.appearance().backgroundColor = .white
//        UINavigationBar.appearance().backgroundColor = .white// UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 0)
//        UIView.appearance().backgroundColor = UIColor(hue: 220, saturation: 0.26, brightness: 0.18, alpha: 1)
//        UILabel.appearance().textColor = UIColor(named: "ColorTest1") //UIColor(hue: 0, saturation: 0, brightness: 1, alpha: 1)
//        
//        UIButton.appearance().titleLabel?.textColor = .none
//        UIButton.appearance().setTitleColor(UIColor.black, for: .normal)
//        UIButton.appearance().setTitleColor(UIColor.yellow, for: .disabled)
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

