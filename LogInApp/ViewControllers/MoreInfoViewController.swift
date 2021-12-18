//
//  MoreInfoViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    @IBOutlet var hobbiesLabel: UILabel!
    @IBOutlet var filmsLabel: UILabel!
    @IBOutlet var tvSeriesLabel: UILabel!
    @IBOutlet var favoritDishesLabel: UILabel!
    
    var hobbies = ""
    var films = ""
    var tvSeries = ""
    var dishes = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbiesLabel.text = hobbies
        filmsLabel.text = films
        tvSeriesLabel.text = tvSeries
        favoritDishesLabel.text = dishes
    }
    

}
