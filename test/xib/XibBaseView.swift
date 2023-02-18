//
//  XibBaseView.swift
//  test
//
//  Created by CymmetrikDev2 on 2022/12/9.
//

import UIKit

protocol PXib {
    
    func setUI(owner: UIView, topAnchor: CGFloat) -> Void
}

internal class XibBaseVC: UIViewController, PXib {

    internal var selfView: UIView { get { return self.view! } }

    func setUI(owner: UIView, topAnchor: CGFloat) -> Void {
        selfView.translatesAutoresizingMaskIntoConstraints = false
        selfView.topAnchor.constraint(equalTo: owner.safeAreaLayoutGuide.topAnchor, constant: topAnchor).isActive = true
        selfView.leadingAnchor.constraint(equalTo: owner.leadingAnchor, constant: 0).isActive = true
        selfView.trailingAnchor.constraint(equalTo: owner.trailingAnchor, constant: 0).isActive = true
        selfView.bottomAnchor.constraint(equalTo: owner.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
    }
}
