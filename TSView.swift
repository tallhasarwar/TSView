//
//  TSView.swift
//  Finja
//
//  Created by Tallha Sarwar on 24/12/2019.
//  Copyright © 2019 Finja Pvt Limited. All rights reserved.
//

import Foundation


@IBDesignable class TSView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        sharedInit()
    }
    
    func sharedInit() {
        refreshCorners(value: cornerRadius)
        refreshshadowColor(value: shadowColor)
        refreshshadowRadius(value: shadowRadius)
        refreshshadowOpacity(value: shadowOpacity)
        refreshshadowOffsetY(value: shadowOffsetY)
        refreshBorderWidth(value: borderWidth)
    }
    
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            if !rounded {
                refreshCorners(value: cornerRadius)
            }
        }
    }
    
    @IBInspectable public var rounded: Bool = false {
        didSet {
            if rounded {
                cornerRadius = frame.height/2
                refreshCorners(value: cornerRadius)
            }
            else{
                refreshCorners(value: cornerRadius)
            }
        }
    }
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
        layoutIfNeeded()
    }
    
    @IBInspectable public var shadowColor: UIColor = UIColor.clear {
        didSet {
            refreshshadowColor(value: shadowColor)
        }
    }
    func refreshshadowColor(value: UIColor) {
        layer.shadowColor = value.cgColor
    }
    
    @IBInspectable public var shadowRadius: CGFloat = 0 {
        didSet {
            refreshshadowRadius(value: shadowRadius)
        }
    }
    func refreshshadowRadius(value: CGFloat) {
        layer.shadowRadius = value
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            refreshBorderWidth(value: borderWidth)
        }
    }
    
    func refreshBorderWidth(value: CGFloat) {
        layer.borderWidth = value
    }
    
    
    @IBInspectable public var shadowOpacity: CGFloat = 0 {
        didSet {
            refreshshadowOpacity(value: shadowOpacity)
        }
    }
    func refreshshadowOpacity(value: CGFloat) {
        layer.shadowOpacity = Float(value)
    }
    
    @IBInspectable public var shadowOffsetY: CGFloat = 0 {
        didSet {
            refreshshadowOffsetY(value: shadowOffsetY)
        }
    }
    func refreshshadowOffsetY(value: CGFloat) {
        layer.shadowOffset.height = value
    }
   
}
