//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Johan Sas on 23-01-17.
//  Copyright © 2017 DevHurricane. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    // MARK: Variables
    
    var  pokemon: Pokemon!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var defenceLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var evolutionLabel: UILabel!
    @IBOutlet weak var currentEvolveImage: UIImageView!
    @IBOutlet weak var nextEvolveImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = pokemon.name
        
    }

   

}
