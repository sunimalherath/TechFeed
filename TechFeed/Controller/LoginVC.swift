//
//  LoginVC.swift
//  TechFeed
//
//  Created by Sunimal Herath on 16/2/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailField: InsetTextField!
    @IBOutlet weak var passwordField: InsetTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginBtnWasPressed(_ sender: Any) {
        // check email and password field for value
        if emailField.text != nil && passwordField.text != nil {
            // call AuthSerice singleton class to access the login method
            
        }
        
    }
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
