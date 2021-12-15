//
//  ViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 15.12.2021.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let name = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeScreenVC = segue.destination as! WelcomeScreenViewController
        welcomeScreenVC.welcomeMessage = "Hello \(String(describing: name))"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        userNameTextField.endEditing(true)
        passwordTextField.endEditing(true)
    }

    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTextField.text != name || passwordTextField.text != password{
            showAlert(title: "Oops!", message: "Wrong username or password:(")
            return
        }
    }

    @IBAction func forgotUserNameButton() {
        showAlert(title: "Oops!", message: "Your name is \(name) ;)")
        return
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Oops!", message: "Your password is \(password) :)")
        return
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}

extension LogInViewController {
    private func showAlert(title: String, message: String) {
        let messageAlert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        messageAlert.addAction(UIAlertAction(title: "OK", style: .default))
                               
        present(messageAlert, animated: true)
    }
}

