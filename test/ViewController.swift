//
//  ViewController.swift
//  test
//
//  Created by CymmetrikDev2 on 2022/11/23.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .red //UIColor(hue: 220, saturation: 0.5, brightness: 0.08, alpha: 1)
    }
}

class ViewController: UIViewController {

    private var subviews: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let pageVC = PageVC()
        self.addChildView(childView: pageVC, isHiddden: false)
    }

    private func addChildView<T>(childView: T, isHiddden: Bool = true) where T : UIViewController, T : PXib {
        addChild(childView)
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
        childView.setUI(owner: self.view, topAnchor: 30)
        childView.view.isHidden = isHiddden
        self.subviews.append(childView)
    }
}
