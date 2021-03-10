//
//  DatabaseManager.swift
//  Bise
//
//  Created by Sophie Jacquot  on 08/03/2021.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
}

//MARK: - Account Management

extension DatabaseManager {
    
    public func userExists(with email: String,
                           completion: @escaping ((Bool) -> Void)) {
        
        database.child(email).observeSingleEvent(of: .value, with: {snapshot in
            guard  snapshot.value as? String != nil else{
                completion(false)
                return
            }
            completion(true)
        })
        
    }
    
    
    /// Insert new user to database
    public func insertUser(with user: BiseUser){
        database.child(user.emailAddress).setValue([
            "prénom": user.firstName,
            "nom" : user.lastName,
        ])
        
    }
    
}







struct BiseUser {
    let firstName: String
    let lastName: String
    let emailAddress: String
    //    let profilePictureUl: String
}
