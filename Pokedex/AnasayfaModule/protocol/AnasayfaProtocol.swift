//
//  AnasayfaProtocol.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    func PokemonYukle()
    func ara(aramaKelimesi:String)
}
protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumPokemonYukle()
    func pokeAra(aramaKelimesi:String)
}
protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(pokemonListesi:Array<pokemon>)
}
protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(pokemonListesi:Array<pokemon>)
}
protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
