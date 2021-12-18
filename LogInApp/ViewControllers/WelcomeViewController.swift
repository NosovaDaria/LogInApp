//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeMessageLabel: UILabel!
    
    var fullName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessageLabel.text = "Welcome, \(fullName)!"
    }
    

  
}
