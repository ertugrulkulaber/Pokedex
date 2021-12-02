//
//  ViewController.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import UIKit
import Alamofire
import Kingfisher

class AnasayfaVC: UIViewController {

    @IBOutlet weak var PokedexCollectionView: UICollectionView!
    @IBOutlet weak var SearchBar: UISearchBar!
    var pokemonListe = [pokemon]()
   
    var anasayfaPresenterNesnesi:ViewToPresenterAnasayfaProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        PokedexCollectionView.delegate = self
        PokedexCollectionView.dataSource = self
        AnasayfaRouter.createModule(ref: self)
        let genislik = PokedexCollectionView.frame.size.width
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        let itemGenislik = (genislik-30)/2
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.65)
        PokedexCollectionView.collectionViewLayout = tasarim
            }
    override func viewWillAppear(_ animated: Bool) {
        anasayfaPresenterNesnesi?.PokemonYukle()
    }
    
}
extension AnasayfaVC : PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(pokemonListesi: Array<pokemon>) {
        self.pokemonListe = pokemonListesi
        DispatchQueue.main.async {
            self.PokedexCollectionView.reloadData()
        }
    }
}
extension AnasayfaVC : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        anasayfaPresenterNesnesi?.ara(aramaKelimesi: searchText)
    }
}

extension AnasayfaVC : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemonListe.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let poke = pokemonListe[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "pokeHucre", for: indexPath) as! AnasayfaCollectionViewCell
        cell.NameLabel.text = poke.name
        cell.imageView.kf.setImage(with: URL(string: poke.img!))
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 15
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let poke = pokemonListe[indexPath.row]
        print("Seçilen Ülke \(poke.name!) - \(poke.num!)")
        performSegue(withIdentifier: "toDetay", sender: poke)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            let pokem = sender as? pokemon
            let gidilecekVC = segue.destination as! DetayVC
            gidilecekVC.pokem = pokem
        }
    }
    
}
