//
//  AuthVC.swift
//  TechFeed
//
//  Created by Sunimal Herath on 16/2/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }
    
    @available(iOS 13.0, *)
    @IBAction func emailSignInBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(identifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
}
