//
//  ViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 15.12.2021.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let user = "User"
    private let password = "Password"
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
  }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeScreenVC = segue.destination as! WelcomeScreenViewController
        welcomeScreenVC.user = user
    }
    

    // MARK: IB Actions
    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTextField.text != user || passwordTextField.text != password{
            showAlert(
                title: "Oops!",
                message: "Wrong username or password:(",
                textField: passwordTextField
            )
        }
    }

    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user) 😉")
            : showAlert(title: "Oops!", message: "Your password is \(password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}
// MARK: - Private Methods
extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let messageAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){ _ in
            textField?.text = ""
        }
        messageAlert.addAction(okAction)
        present(messageAlert, animated: true)
    }
}
extension LogInViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        passwordTextField.endEditing(true)
    }
    
    
}

