//
//  DetayPresenter.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import Foundation

class DetayPresenter : ViewToPresenterDetayProtocol {
    var DetayInteractor: PresenterToInteractorDetayProtocol?
    
    var DetayView: PresenterToViewDetayProtocol?
    
    func PokemonYukle() {
        DetayInteractor?.tumPokemonYukle()
    }
    
    
}
