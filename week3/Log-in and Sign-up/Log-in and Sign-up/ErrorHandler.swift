//
//  ErrorHandler.swift
//  Log-in and Sign-up
//
//  Created by Hailey on 2022/8/28.
//

import Foundation
import UIKit


enum LoginError: Error {
    case accountIsEmpty
    case passwordIsEmpty
    case checkPasswordIsEmpty
    case signupFail
    case loginFail
}

extension LoginError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .accountIsEmpty: return "Account should not be empty."
        case .passwordIsEmpty: return "Password should not be empty."
        case .checkPasswordIsEmpty: return "Check Password should not be empty."
        case .signupFail: return "Signup fail"
        case .loginFail: return "Login fail"
        }
    }
}

