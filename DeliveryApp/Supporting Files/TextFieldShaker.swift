//
//  TextFieldShaker.swift
//  DeliveryApp
//
//  Created by Daniil Slaykovski on 02.04.2018.
//  Copyright © 2018 Daniil Slaykovski. All rights reserved.
//

import UIKit

class TextFieldShaker: UITextField {

    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y:self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
}
