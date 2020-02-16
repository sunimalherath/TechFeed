//
//  DataService.swift
//  TechFeed
//
//  Created by Sunimal Herath on 16/2/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()

class DataService {
    // making this class as a Singleton class
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE
    private var _REF_USERS = DB_BASE.child("users")
    private var _REF_FEED = DB_BASE.child("feed")
    
    var REF_BASE: DatabaseReference {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference {
        return _REF_USERS
    }
    
    var REF_FEED: DatabaseReference {
        return _REF_FEED
    }
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>) {
        // .child() creates a child table for the passing uid
        // and pass the userData to the .updateChildValues()
        REF_USERS.child(uid).updateChildValues(userData)
    }
}
