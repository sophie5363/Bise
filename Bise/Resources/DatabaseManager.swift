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
    
    public func test(){
        
        database.child("foo").setValue(["something": true])
    }
    

    
}
