//
//  AboutMeViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var photo: UIImageView!
    
    var fullName = ""
    var age = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = fullName
        ageLabel.text = age
    }

}
    



