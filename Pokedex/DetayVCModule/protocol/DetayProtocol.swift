//
//  DetayProtocol.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import Foundation

protocol ViewToPresenterDetayProtocol {
    var DetayInteractor:PresenterToInteractorDetayProtocol? {get set}
    var DetayView:PresenterToViewDetayProtocol? {get set}
    func PokemonYukle()
   
}
protocol PresenterToInteractorDetayProtocol {
    var DetayPresenter:InteractorToPresenterDetayProtocol? {get set}
    func tumPokemonYukle()
}
protocol InteractorToPresenterDetayProtocol {
    func presenteraVeriGonder(pokemonListesi:Array<pokemon>)
}
protocol PresenterToViewDetayProtocol {
    func vieweVeriGonder(pokemonListesi:Array<pokemon>)
}
protocol PresenterToRouterDetayProtocol {
    static func createModule(ref: DetayVC)
}
