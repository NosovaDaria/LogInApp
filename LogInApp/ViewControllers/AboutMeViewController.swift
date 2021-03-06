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
    @IBOutlet var imageView: UIImageView!
    // MARK: - Public Properties
    var user: User!

    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = user.person.name
        let surname = user.person.surname
        let age = user.person.age
        
        imageView.image = UIImage(named: user.person.image)
        imageView.layer.cornerRadius = imageView.bounds.width/2
        fullNameLabel.text = name + " " + surname
        ageLabel.text = age
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let moreInfoVC = segue.destination as? MoreInfoViewController {
            moreInfoVC.user = user
        }
    }
}
    



