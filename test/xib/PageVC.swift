//
//  PageVC.swift
//  test
//
//  Created by CymmetrikDev2 on 2022/12/9.
//

import UIKit

/// 示範 scroll view 搭配 pageControl/小圓點 來切換頁面
class PageVC: XibBaseVC {
    
    @IBOutlet weak var uiPageControl: UIPageControl!
    @IBOutlet weak var uiScrollView: UIScrollView!
    
    @IBOutlet weak var button1: test1Button!
    @IBOutlet weak var button2: test1Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.uiScrollView.delegate = self
        self.button1.isEnabled = false
        self.button2.isEnabled = true
        
    }
    
    @IBAction func pageControllSwitch(_ sender: UIPageControl) {
        
        // 計算 offset 要移動的量：透過 scrollView 的 width 乘 pageControl Page 來計算。(page 起始從 0 開始)
        let point = CGPoint(x: uiScrollView.bounds.width * CGFloat(sender.currentPage), y: 0)
        // 使 scrollView 依據 offset 來做移動
        uiScrollView.setContentOffset(point, animated: true)
    }
    
}

extension PageVC: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        // 計算 page：透過 scrollView X方向 offset，如果大於自身 contentWidth 就等於切到另一頁。
        let page = scrollView.contentOffset.x / scrollView.bounds.width
        self.uiPageControl.currentPage = Int(page)
    }
}
