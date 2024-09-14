//
//  DeckView.swift
//  Solitaire
//
//  Created by Hudson Ruger on 9/9/24.
//

import Foundation
import SwiftUI

struct DeckView: View {
    @State var deck: Deck
    var body: some View {
        VStack {
            List {
                ForEach(deck.cards) {
                    card in
                    HStack {
                        CardView(card: card)
                    }
                    
                }
                .onDelete(perform: delete)
            }
        }
        
    }
    func delete(at offsets: IndexSet) {
        deck.cards.remove(atOffsets: offsets)
    }
}
