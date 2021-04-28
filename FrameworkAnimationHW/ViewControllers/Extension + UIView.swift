//
//  Extension + UIView.swift
//  FrameworkAnimationHW
//
//  Created by Кирилл Нескоромный on 28.04.2021.
//

import UIKit

extension UIView {
    func applyDesign(divisorFrame: CGFloat) {
        self.layer.cornerRadius = self.frame.height / divisorFrame
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 3, height: 5)
    }
}
