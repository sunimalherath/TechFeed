//
//  InsetTextField.swift
//  TechFeed
//
//  Created by Sunimal Herath on 16/2/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import UIKit

class InsetTextField: UITextField {
    var padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
