//
//  AboutMeViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var photo: UIImageView!
    
    // MARK: - Public Properties
    var fullName = ""
    var age = ""
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = fullName
        ageLabel.text = age
    }

}
    



