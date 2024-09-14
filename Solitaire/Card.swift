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
    
    init(suit: String, symbol: String) {
        self.suit = suit
        self.symbol = symbol
    }
    func getImageName() -> String {
        return "card_\(suit)_\(symbol)"
    }
}
