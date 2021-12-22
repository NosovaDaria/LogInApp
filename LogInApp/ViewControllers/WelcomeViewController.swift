//
//  WelcomeViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var welcomeMessageLabel: UILabel!
    
    // MARK: - Public Properties
    var user: User!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = user.person.name
        let surname = user.person.surname
        
        welcomeMessageLabel.text = "Welcome, \(name) \(surname)!"
    }
}
