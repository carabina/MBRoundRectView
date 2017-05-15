//
//  MBRoundRectView.swift
//  Demo
//
//  Created by Manish Bhande on 15/05/17.
//  Copyright © 2017 Manish Bhande. All rights reserved.
//

import UIKit


@IBDesignable
class MBRoundRectView: UIView {
    
    /// Provide corner radius to UIView for
    @IBInspectable var radius: CGFloat = 0 {
        didSet { updateCornerRadius() }
    }
    
    /// Activate / deactivate top left corner
    @IBInspectable var topLeft: Bool = true {
        didSet { enable(corner: .topLeft, enable: topLeft) }
    }
    
    /// Activate / deactivate top right corner
    @IBInspectable var topRight: Bool = true {
        didSet { enable(corner: .topRight, enable: topRight) }
    }
    
    /// Activate / deactivate bottom right corner
    @IBInspectable var bottomLeft: Bool = true {
        didSet { enable(corner: .bottomLeft, enable: bottomLeft) }
    }
    
    /// Activate / deactivate bottom left corner
    @IBInspectable var bottomRight: Bool = true {
        didSet {
            enable(corner: .bottomRight, enable: bottomRight)
        }
    }
    
    /// Set of active corners
    private var activeCorner: UIRectCorner = [.topLeft, .topRight, .bottomLeft, .bottomRight]
    
    /// Update corner radius as per User setting
    private func updateCornerRadius() {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: activeCorner, cornerRadii: CGSize(width: radius, height: radius)).cgPath
        let maskLayer = CAShapeLayer()
        maskLayer.path = path
        layer.mask = maskLayer
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        updateCornerRadius()
    }
    
    /// Activate / deactive corner
    ///
    /// - Parameters:
    ///   - corner: corner to Activate / deactivate
    ///   - enable: enable / disable corner
    private func enable(corner: UIRectCorner, enable: Bool = true) {
        if enable {
            activeCorner.insert(corner)
        } else {
            activeCorner.remove(corner)
        }
        updateCornerRadius()
    }
}
