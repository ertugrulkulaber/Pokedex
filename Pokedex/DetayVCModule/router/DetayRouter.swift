//
//  DetayRouter.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import Foundation

class DetayRouter : PresenterToRouterDetayProtocol {
    static func createModule(ref: DetayVC) {
        let presenter : ViewToPresenterDetayProtocol & InteractorToPresenterDetayProtocol = DetayPresenter()        ref.DetayPresenterNesnesi = presenter
        ref.DetayPresenterNesnesi?.DetayInteractor = DetayInteractor()
        ref.DetayPresenterNesnesi?.DetayView = ref
        ref.DetayPresenterNesnesi?.DetayInteractor?.DetayPresenter = presenter
    }
}
