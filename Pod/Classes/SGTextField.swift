//
//  SGTextField.swift
//  Pods
//
//  Created by Spiros Gerokostas on 21/10/15.
//
//

import UIKit

public class SGTextField: UITextField {
    
    public var textEdgeInsets:UIEdgeInsets = UIEdgeInsetsZero
    public var clearButtonEdgeInsets:UIEdgeInsets = UIEdgeInsetsZero
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        textEdgeInsets = UIEdgeInsetsZero
        clearButtonEdgeInsets = UIEdgeInsetsZero
    }
    
    // MARK: UITextField
    
    override public func textRectForBounds(bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(super.textRectForBounds(bounds), textEdgeInsets)
    }
    
    override public func editingRectForBounds(bounds: CGRect) -> CGRect {
        return self.textRectForBounds(bounds)
    }
    
    override public func clearButtonRectForBounds(bounds: CGRect) -> CGRect {
        var rect = super.clearButtonRectForBounds(bounds)
        rect = CGRectMake(rect.origin.x, rect.origin.y + clearButtonEdgeInsets.top, rect.size.width, rect.size.height)
        return CGRectMake(rect.origin.x + clearButtonEdgeInsets.right, rect.origin.y, rect.size.width, rect.size.height)
    }
}

