//
//  ViewController.swift
//  DeliveryApp
//
//  Created by Daniil Slaykovski on 25.03.2018.
//  Copyright © 2018 Daniil Slaykovski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var passwordTextField: TextFieldShaker!
    
    override func viewDidLoad() {
        
        nameField.delegate = self
        passwordField.delegate = self
        passwordTextField.delegate = self

        super.viewDidLoad()
//паралакс эффект
        let xMax = CGFloat(50.0)
        let xMin = CGFloat(-50.0)
        let xMotion = UIInterpolatingMotionEffect(keyPath: "ctnter.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = xMin
        xMotion.maximumRelativeValue = xMax
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion]
        backgroundImage.addMotionEffect(motionEffectGroup)
    }
// убрать клавиатуру
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameField {
            passwordField.becomeFirstResponder()
        } else if textField == passwordField {
            textField.resignFirstResponder()
        }
        return true
    }
//анимация на текст фиелд
    func textFieldDidBeginEditing(_ textField: UITextField) {
        passwordTextField.shake()
    }
    

}

