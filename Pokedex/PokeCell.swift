//
//  PokeCell.swift
//  Pokedex
//
//  Created by Johan Sas on 23-01-17.
//  Copyright © 2017 DevHurricane. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    // MARK: Outlets
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    // MARK: Variables
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        layer.borderWidth = 1
        layer.borderColor = UIColor.gray.cgColor
        
    }

 
    
    
    
    // MARK: Functions
    
    func configureCell(_ pokemon: Pokemon) {
        
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name.capitalized
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
    
}
