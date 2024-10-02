//
//  Card.swift
//  Solitaire
//
//  Created by Hudson Ruger on 9/6/24.
//

import Foundation
import SwiftUI

class Card : Identifiable {
    var suit: String
    var symbol: String
    var value: Int
    
    init(suit: String, symbol: String) {
        self.suit = suit
        self.symbol = symbol
        
        if symbol == "k" {
            self.value = 13
        } else if symbol == "Q" {
            self.value = 12
        } else if symbol == "J" {
            self.value = 11
        } else if symbol == "A" {
            self.value = 1
        } else {
            self.value = Int(symbol) ?? 10
        }
    }
    func getImageName() -> String {
        return "card_\(suit)_\(symbol)"
    }
}
