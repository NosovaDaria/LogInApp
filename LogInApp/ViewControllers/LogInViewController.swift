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
    private let user = User.getUser()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.layer.cornerRadius = 10
        passwordTextField.layer.cornerRadius = 10
  }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        let viewControllers = tabBarController.viewControllers!
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.fullName = user.person.name + " " + user.person.surname
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.fullName = user.person.name + " " + user.person.surname
                aboutUserVC.age = user.person.age
            } else if let moreInfoVC = segue.destination as? MoreInfoViewController {
                moreInfoVC.hobbies = user.person.hobbies
                moreInfoVC.films = user.person.favoriteFilms
                moreInfoVC.tvSeries = user.person.favoriteTVSeries
                moreInfoVC.dishes = user.person.favoriteDishes
            }
        }
    }
    

    // MARK: IB Actions
    @IBAction func logInButton(_ sender: UIButton) {
        if userNameTextField.text != user.username || passwordTextField.text != user.password{
            showAlert(
                title: "Oops!",
                message: "Wrong username or password:(",
                textField: passwordTextField
            )
        }
    }

    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your username is \(user.username) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(user.password) 😉")
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
        userNameTextField.endEditing(true)
        passwordTextField.endEditing(true)
    }
    
    
}

