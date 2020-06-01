//
//  ViewController.swift
//  myResume
//
//  Created by Kir Pir on 31.05.2020.
//  Copyright © 2020 Kirill_Presnyakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        if LogIn.getUserName() == userNameTextField.text
        && LogIn.getUserPassword() == userPasswordTextField.text {
            return
        } else {
            showAlert(with: "Attention!",
                      and: "Wrong user name or password")
            return
        }
    }
    
    @IBAction func forgotNameButtonPressed(_ sender: Any) {
        showAlert(with: "Don't worry",
                  and: "Your user name is user")
        return
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
          showAlert(with: "Don't worry",
                    and: "Your password is password")
        return
    }
    
    override func prepare(for segue: UIStoryboardSegue,
                          sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let destinationVC = tabBarController.viewControllers?.first as!
        HelloUserViewController
        destinationVC.userName = userNameTextField.text
        userNameTextField.text = ""
        userPasswordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        if let _ = touches.first {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }
    
    
    // Метод не работает
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            textField.resignFirstResponder()
            userPasswordTextField.becomeFirstResponder()
        }
        return true
    }
    

}

// Mark: - UIAlertController
extension ViewController {
    private func showAlert(with title: String,
                           and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { _ in
            self.userPasswordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


