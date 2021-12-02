//
//  Pokemon.swift
//  Pokedex
//
//  Created by Ertuğrul Kulaber on 30.11.2021.
//

import Foundation
import Alamofire

class pokemon:Codable{

    var id: Int?
    var num, name: String?
    var img: String?
    var type: [TypeElement]?
    var height, weight, candy: String?
    var candyCount: Int?
    var egg: Egg?
    var spawnChance, avgSpawns: Double?
    var spawnTime: String?
    var multipliers: [Double]?
    var weaknesses: [TypeElement]?
    var nextEvolution, prevEvolution: [Evolution]?

      enum CodingKeys: String, CodingKey {
          case id, num, name, img, type, height, weight, candy
          case candyCount
          case egg
          case spawnChance
          case avgSpawns
          case spawnTime
          case multipliers, weaknesses
          case nextEvolution
          case prevEvolution
      }

      init(id: Int?, num: String?, name: String?, img: String?, type: [TypeElement]?, height: String?, weight: String?, candy: String?, candyCount: Int?, egg: Egg?, spawnChance: Double?, avgSpawns: Double?, spawnTime: String?, multipliers: [Double]?, weaknesses: [TypeElement]?, nextEvolution: [Evolution]?, prevEvolution: [Evolution]?) {
          self.id = id
          self.num = num
          self.name = name
          self.img = img
          self.type = type
          self.height = height
          self.weight = weight
          self.candy = candy
          self.candyCount = candyCount
          self.egg = egg
          self.spawnChance = spawnChance
          self.avgSpawns = avgSpawns
          self.spawnTime = spawnTime
          self.multipliers = multipliers
          self.weaknesses = weaknesses
          self.nextEvolution = nextEvolution
          self.prevEvolution = prevEvolution
      }
  }




enum Egg: String, Codable {
    case notInEggs = "Not in Eggs"
    case omanyteCandy = "Omanyte Candy"
    case the10KM = "10 km"
    case the2KM = "2 km"
    case the5KM = "5 km"
}
class Evolution: Codable {
    let num, name: String?

    init(num: String?, name: String?) {
        self.num = num
        self.name = name
    }
}

enum TypeElement: String, Codable {
    case bug = "Bug"
    case dark = "Dark"
    case dragon = "Dragon"
    case electric = "Electric"
    case fairy = "Fairy"
    case fighting = "Fighting"
    case fire = "Fire"
    case flying = "Flying"
    case ghost = "Ghost"
    case grass = "Grass"
    case ground = "Ground"
    case ice = "Ice"
    case normal = "Normal"
    case poison = "Poison"
    case psychic = "Psychic"
    case rock = "Rock"
    case steel = "Steel"
    case water = "Water"
}
