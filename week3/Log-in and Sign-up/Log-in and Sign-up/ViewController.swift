//
//  ViewController.swift
//  Log-in and Sign-up
//
//  Created by Hailey on 2022/8/24.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var accountUITextField: UITextField!
    @IBOutlet weak var passwordUITextField: UITextField!
    @IBOutlet weak var checkUITextField: UITextField!
    @IBOutlet weak var checkOutlet: UILabel!
    @IBOutlet weak var changeOutlet: UISegmentedControl!
    

    
    
    @IBAction func changeUISegmentedControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 1 {
            checkUITextField.backgroundColor = .white
            checkOutlet.textColor = .black
            checkUITextField.isUserInteractionEnabled = true
        } else {
            checkUITextField.backgroundColor = .gray
            checkOutlet.textColor = .gray
            checkUITextField.isUserInteractionEnabled = false
            
        }
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        let user = User(account: accountUITextField?.text ?? "", password: passwordUITextField?.text ?? "", checkPassword: checkUITextField?.text ?? "")
        
        var loginError = ""
        
        if changeOutlet.selectedSegmentIndex == 1 {
            do {
                try signUpUser(user)
            } catch {
                loginError = error.localizedDescription
            }
        } else {
            do {
                try loginUser(user)
            } catch {
                loginError = error.localizedDescription
            }
        }
        
        if loginError != "" {
            let alert = UIAlertController(title: "Error", message: loginError, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            })
            alert.addAction(action)
            present(alert, animated:  true)
        } else if loginError == "" && changeOutlet.selectedSegmentIndex == 1{
            let alert = UIAlertController(title: "Success", message: "Signup successful", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            })
            alert.addAction(action)
            present(alert, animated:  true)
        }else {
            let alert = UIAlertController(title: "Success", message: "Login successful", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            })
            alert.addAction(action)
            present(alert, animated:  true)
        }
        
    }
    
    
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            
        })
        alert.addAction(action)
        present(alert, animated:  true)
    }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        accountUITextField.delegate = self
        passwordUITextField.delegate = self
        checkUITextField.delegate = self
        changeOutlet.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)

        checkUITextField.backgroundColor = .gray
        checkOutlet.textColor = .gray
        checkUITextField.isUserInteractionEnabled = false
    
    }

}



extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == accountUITextField {
            passwordUITextField.becomeFirstResponder()
        }else if textField == passwordUITextField && (checkUITextField.isUserInteractionEnabled == true) {
            checkUITextField.becomeFirstResponder()
        }else {
            textField.endEditing(true)
        }

        return true
    }
    
}

