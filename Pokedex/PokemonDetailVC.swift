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
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var evolutionLabel: UILabel!
    @IBOutlet weak var currentEvolveImage: UIImageView!
    @IBOutlet weak var nextEvolveImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = pokemon.name
        let image = UIImage(named: "\(pokemon.pokedexId)")
        
        mainImage.image = image
        currentEvolveImage.image = image
        pokedexLabel.text = "\(pokemon.pokedexId)"
        pokemon.downloadPokemonDetails {
            //This will be called after the network call is complete
            self.updateUI()
        }
        
    }
    
    func updateUI() {
        
      attackLabel.text = pokemon.attack
        defenseLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        typeLabel.text = pokemon.type
        
    }

    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
   

}
