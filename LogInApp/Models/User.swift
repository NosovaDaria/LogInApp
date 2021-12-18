//
//  User.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import Foundation

struct User {
    // MARK: - Public Properties
    
    let username: String
    let password: String
    let person: Person
    
    // MARK: - Public Methods
    static func getUser() -> User {
            User(
                username: "User",
                password: "Password",
                person: Person.getPerson()
            
            )
    }
}
