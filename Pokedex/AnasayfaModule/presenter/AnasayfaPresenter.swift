//
//  AnasayfaPresenter.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import Foundation


class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    func PokemonYukle() {
        anasayfaInteractor?.tumPokemonYukle()
    }
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.pokeAra(aramaKelimesi: aramaKelimesi)
    }
}
extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(pokemonListesi: Array<pokemon>) {
        anasayfaView?.vieweVeriGonder(pokemonListesi: pokemonListesi)
    }
}
