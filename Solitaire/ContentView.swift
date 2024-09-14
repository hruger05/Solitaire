//
//  ContentView.swift
//  Solitaire
//
//  Created by Hudson Ruger on 9/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var deck = Deck()
    
    @State var shownCards = [Card]()
    @State var hand:[Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "diamonds", symbol: "A"),
        Card(suit: "clubs", symbol: "A"),
        Card(suit: "hearts", symbol: "A")
    ]
    @State var column1: [Card] = [
        Card(suit: "spades", symbol: "A")
    ]
    @State var column2: [Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A")
    ]
    @State var column3: [Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A")
    ]
    @State var column4: [Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A")
    ]
    @State var column5: [Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A")
    ]
    @State var column6: [Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A")
    ]
    @State var column7: [Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A")
    ]
    
    var body: some View {
        VStack(spacing: 30) {
            
            HStack{
                Button {
                    takeThreeCardsFromDeck()
                } label: {
                    Image("card_back")
                        .resizable()
                        .frame(width: 53, height: 60)
                }

                
                if shownCards.count > 0 {
                    ZStack{
                        Image(shownCards.first?.getImageName() ?? "card_back")
                            .offset(x: -15)
                            .frame(height: 60)
                            .background(.red)
                        Image(shownCards.first?.getImageName() ?? "card_back")
                            .frame(height: 60)
//                            .background(.red)
                        Image(shownCards.first?.getImageName() ?? "card_back")
                            .frame(height: 60)
                            .offset(x: 15)
//                            .background(.red)
                    }
                }
                
                ForEach(hand) { card in
                    CardView(card: card)
                        .frame(height: 55)
                        .background(.red)
                }
            }
            
            HStack(spacing: 1){
                VStack{
                    // first card
                    ForEach(column1) { card in
                        CardView(card: card)
                    }
                    .frame(height: 55)
                    Spacer()
                }
                
                VStack{
                    ForEach(column2) { card in
                        CardView(card: card)
                    }
                    .frame(height: 55)
                    Spacer()
                }
                
                VStack{
                    ForEach(column3) { card in
                        CardView(card: card)
                    }
                    .frame(height: 55)
                    Spacer()
                }

                VStack{
                    ForEach(column4) { card in
                        CardView(card: card)
                    }
                    .frame(height: 55)
                    Spacer()
                }

                VStack{
                    ForEach(column5) { card in
                        CardView(card: card)
                    }
                    .frame(height: 55)
                    Spacer()
                }

                VStack{
                    ForEach(column6) { card in
                        CardView(card: card)
                    }
                    .frame(height: 55)
                    Spacer()
                }

                VStack{
                    ForEach(column7) { card in
                        CardView(card: card)
                    }
                    .frame(height: 55)
                    Spacer()
                }
            }
        }
        Spacer()
    }
    func takeThreeCardsFromDeck() {
        let card = deck.dealCard()
        shownCards.append(card)
        let card2 = deck.dealCard()
        shownCards.append(card2)
        let card3 = deck.dealCard()
        shownCards.append(card3)
    }
    func isValidMove() {
        var valid = false
        
    }
    func checkColor() {
        var rightColor = false
        var cardColor = false
        
        if cardColor == true {
            
        }
    }
}
    
    #Preview(body: {
        ContentView()
    })
