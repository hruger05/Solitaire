//
//  Deck.swift
//  Solitaire
//
//  Created by Hudson Ruger on 9/9/24.
//

import Foundation
import SwiftUI

class Deck {
    var cards: [Card]
    init() {
        cards = []
        resetDeck()
    }
    func dealCard() -> Card {
        return cards.removeFirst()
    }
    func shuffleDeck() {
        cards.shuffle()
    }
    func resetDeck(){
        cards.removeAll()
        let suits = ["clubs", "hearts", "spades", "diamonds"]
        let symbols = ["02", "03", "04", "05", "06", "07", "08", "09", "10", "J", "Q", "K"]
        
        for suit in suits {
            for symbol in symbols {
                let newCard = Card(suit: suit, symbol: symbol)
                cards.append(newCard)
            }
        }
        shuffleDeck()
    }
}
