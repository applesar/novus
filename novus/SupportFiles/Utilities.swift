//
//  Utilities.swift
//  novus
//
//  Created by Raed Ibrahim on 8/27/21.
//

import Foundation
import UIKit

class Utilities {
    
    static func styleTextField(_ textField:UITextField) {
        
        //Basic texfield Setup
            textField.borderStyle = .none
            textField.backgroundColor = UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
 // Use anycolor that give you a 2d look.

            //To apply corner radius
            textField.layer.cornerRadius = 8

            //To apply border
            textField.layer.borderWidth = 0.25
            textField.layer.borderColor = UIColor.init(red: 242/255, green: 242/255, blue: 242/255, alpha: 1).cgColor

            //To apply Shadow
        textField.layer.shadowOpacity = 0.5
            textField.layer.shadowRadius = 1.0
            textField.layer.shadowOffset = CGSize.zero // Use any CGSize
            textField.layer.shadowColor = UIColor.gray.cgColor

            //To apply padding
            let paddingView : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: textField.frame.height))
            textField.leftView = paddingView
            textField.leftViewMode = UITextField.ViewMode.always
    }
    
    static func styleLabelFieldHeading(_ label:UILabel) {
        
        // Hollow rounded corner style
        label.text = "Welcome to Health Space";
    }
    
    
    static func styleFilledButton(_ button:UIButton) {
        
        // Filled rounded corner style
        button.backgroundColor = UIColor.init(red: 43/255, green: 69/255, blue: 206/255, alpha: 1)
        button.layer.cornerRadius = 12.0
        button.tintColor = UIColor.white
    }
    
    static func styleHollowButton(_ button:UIButton) {
        
        // Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.init(red: 43/255, green: 69/255, blue: 206/255, alpha: 1).cgColor
        button.layer.cornerRadius = 12.0
        button.tintColor = UIColor.black
    }
    
    static func isPasswordValid(_ password : String) -> Bool {
        
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: password)
    }
    
}
