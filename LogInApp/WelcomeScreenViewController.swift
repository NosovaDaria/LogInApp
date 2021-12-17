//
//  WelcomeScreenViewController.swift
//  LogInApp
//
//  Created by Даша on 15.12.2021.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    @IBOutlet var welcomeMessageLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(user)!"
    }
    
    
}
