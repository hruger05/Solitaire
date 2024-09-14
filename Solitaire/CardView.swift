//
//  CardView.swift
//  Solitaire
//
//  Created by Hudson Ruger on 9/6/24.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    let card: Card
    var body: some View {
        Image("\(card.getImageName())")
            .resizable()
            .scaledToFill()
            .frame(height: 55)
    }
}

#Preview {
    CardView(card: Card(suit: "hearts", symbol: "04"))
}
