//
//  Anasayfaİnteractor.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import Foundation
import Alamofire
import Kingfisher
class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    func tumPokemonYukle() {
        AF.request("https://raw.githubusercontent.com/Biuni/PokemonGo-Pokedex/master/pokedex.json",method: .get).responseJSON{ response in
                    if let data = response.data{
                        do{
                            let cevap = try JSONDecoder().decode(PokemonCevap.self, from: data)
                            var liste = [pokemon]()
                            if let gelenListe = cevap.pokemon{
                                liste = gelenListe
                            }
                            self.anasayfaPresenter?.presenteraVeriGonder(pokemonListesi: liste)
                        }catch{
                            print(error.localizedDescription)
                        }
                    }
                }
        
    }

    func pokeAra(aramaKelimesi: String) {
        print("Arama Sonucu : \(aramaKelimesi) ")
    }
    

}
