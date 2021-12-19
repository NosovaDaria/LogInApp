//
//  MoreInfoViewController.swift
//  LogInApp
//
//  Created by Дарья Носова on 18.12.2021.
//

import UIKit

class MoreInfoViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var hobbiesLabel: UILabel!
    @IBOutlet var filmsLabel: UILabel!
    @IBOutlet var tvSeriesLabel: UILabel!
    @IBOutlet var favoritDishesLabel: UILabel!
    
    var user: User?
    
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hobbies = user?.person.hobbies
        let films = user?.person.favoriteFilms
        let tvSeries = user?.person.favoriteTVSeries
        let dishes = user?.person.favoriteDishes
        
        hobbiesLabel.text = hobbies
        filmsLabel.text = films
        tvSeriesLabel.text = tvSeries
        favoritDishesLabel.text = dishes
        
    }

}
