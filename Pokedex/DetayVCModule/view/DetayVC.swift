//
//  DetayVC.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import UIKit
import Kingfisher

class DetayVC: UIViewController {

    @IBOutlet weak var imagePokeView: UIImageView!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var nameBaslik: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var image2PokeView: UIImageView!
    @IBOutlet weak var image3PokeView: UIImageView!
    
    var pokem : pokemon?
    var pokemonListe = [pokemon]()
    override func viewDidLoad() {
        super.viewDidLoad()
        if let u = pokem {
            nameBaslik.text = u.name
            weightLabel.text = u.weight
            heightLabel.text = u.height
            image2PokeView.kf.setImage(with: URL(string: u.img!))
            image3PokeView.kf.setImage(with: URL(string: u.img!))
            
            imagePokeView.kf.setImage(with: URL(string: u.img!))
        }
    }
}
