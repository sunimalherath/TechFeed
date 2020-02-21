//
//  AuthService.swift
//  TechFeed
//
//  Created by Sunimal Herath on 22/2/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation
import Firebase

class AuthService {
    static let instance = AuthService()
    
    /*  create a fuction to register passing user in Firebase with completion handler
        to check whether the user creation is success or not
     */
    func registerUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?)->()){
        
        Auth.auth().createUser(withEmail: email, password: password) { (results, error) in
            guard let user = results?.user else {
                userCreationComplete(false, error)
                return
            }
            
            let userData = ["provider": user.providerID, "email": user.email]
            
            DataService.instance.createDBUser(uid: user.uid, userData: userData as Dictionary<String, Any>)
            
            userCreationComplete(true, nil)
        }
    }
    
    /*  creating fuction to login user using Firebase authentication with a completion
        handler to check whether the login is success or not
     */
    func loginUser(withEmail email: String, andPassword password: String, userLoginCompletion: @escaping (_ status: Bool, _ error: Error?)->()){
        
        Auth.auth().signIn(withEmail: email, password: password) { (results, error) in
            if error != nil {
                userLoginCompletion(false, error)
                return
            }
            userLoginCompletion(true, nil)
        }
    }
}
