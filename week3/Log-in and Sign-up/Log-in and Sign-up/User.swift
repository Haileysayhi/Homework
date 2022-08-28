//
//  User.swift
//  Log-in and Sign-up
//
//  Created by Hailey on 2022/8/28.
//

import Foundation

struct User {
    var account: String  = ""
    var password: String = ""
    var checkPassword: String = ""
}


func loginUser(_ user: User) throws {
    print("DEBUG: Validating user")
    guard !user.account.isEmpty else {
        throw LoginError.accountIsEmpty
    }
    
    guard !user.password.isEmpty else {
        throw LoginError.passwordIsEmpty
    }
    
    guard user.account == "appworks_school@gmail.com" && user.password == "1234" else {
        throw LoginError.loginFail
    }
}

func signUpUser(_ user: User) throws {
    print("DEBUG: Validating user")
    guard !user.account.isEmpty else {
        throw LoginError.accountIsEmpty
    }
    
    guard !user.password.isEmpty else {
        throw LoginError.passwordIsEmpty
    }
    
    guard !user.checkPassword.isEmpty else {
        throw LoginError.checkPasswordIsEmpty
    }
    
    guard user.checkPassword == user.password else {
        throw LoginError.signupFail
    }
}
