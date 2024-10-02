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

    @State var Astack1 = []
    
    @State var Astack2 = []
    
    @State var Astack3 = []
    
    @State var Astack4 = []
    
    @State private var card1 = Image("card_back")
    
    @State private var card2 = Image("card_back")
    
    @State private var card3 = Image("card_back")
    
    @State private var card4 = Image("card_back")
    
    @State private var currentCollectedCard = Image("card_back")
    
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
        Card(suit: "hearts", symbol: "A"),
        Card(suit: "hearts", symbol: "A")
    ]
    @State var column3: [Card] = [
        Card(suit: "spades", symbol: "A"),
        Card(suit: "spades", symbol: "A"),
        Card(suit: "hearts", symbol: "A")
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
                    //                        .dropDestination(for: Image.self) { item, hand in
                    //
                    //                        }
                        .frame(width: 53, height: 60)
                }
                
                
                if shownCards.count > 0 {
                    ZStack{
                        Image(shownCards.first?.getImageName() ?? "card_back")
                            .offset(x: -15)
                            .frame(height: 60)
                            .draggable(Image("\(shownCards)"))
                        
                        //                            .background(.red)
                        Image(shownCards.first?.getImageName() ?? "card_back")
                            .frame(height: 60)
                            .draggable(Image("\(shownCards)"))
                        //   .background(.red)
                        Image(shownCards.first?.getImageName() ?? "card_back")
                            .frame(height: 60)
                            .offset(x: 15)
                            .draggable(Image("\(shownCards)"))
                        //  .background(.red)
                    }
                }
                HStack{
                    
                    card1
                        .frame(width: 53, height: 60)
                        .foregroundStyle(.white)
                        .dropDestination(for: Image.self) { items, location in
                            if checkValidMove(currentCard: <#T##Card#>, stack: <#T##[Card]#>) {
                                card1 = items.first ?? Image(systemName: "photo")
                                return true
                            } else {
                                return false
                            }
                        }
                    card2
                        .frame(width: 53, height: 60)
                        .foregroundStyle(.white)
                        .dropDestination(for: Image.self) { items, location in
                            if checkValidMove(currentCard: <#T##Card#>, stack: <#T##[Card]#>) {
                                card2 = items.first ?? Image(systemName: "photo")
                                return true
                            } else {
                                return false
                            }
                        }
                    card3
                        .frame(width: 53, height: 60)
                        .foregroundStyle(.white)
                        .dropDestination(for: Image.self) { items, location in
                            
                            if checkValidMove(currentCard: <#T##Card#>, stack: <#T##[Card]#>) {
                                card3 = items.first ?? Image(systemName: "photo")
                                return true
                            } else {
                                return false
                            }
                        }
                    card4
                        .frame(width: 53, height: 60)
                        .foregroundStyle(.white)
                        .dropDestination(for: Image.self) { items, location in
                            
                            if checkValidMove(currentCard: , currentCard: <#Card#>, stack: Astack1) == true {
                                card4 = items.first ?? Image(systemName: "photo")
                                return true
                            } else {
                                return false
                            }
                        }
                }
            }
            
            HStack(spacing: 1){
                VStack{
                    // first card
                    ForEach(0..<column1.count, id: \.self) { index in
                        if index == column1.count - 1 {
                            CardView(card: column1[index])
                                .draggable(Image(column1.last?.getImageName() ?? "card_back"))
                            
                        } else {
                            CardView(card: column1[index])
                        }
                    }
                    .frame(height: 55)
                    Spacer()
                }
                
                VStack{
                    ForEach(0..<column2.count, id: \.self) { index in
                        if index == column2.count - 1 {
                            CardView(card: column2[index])
                                .draggable(Image(column2.last?.getImageName() ?? "card_back"))
                            
                        } else {
                            CardView(card: column2[index])
                        }
                    }
                    .frame(height: 55)
                    Spacer()
                }
                
                VStack{
                    ForEach(0..<column3.count, id: \.self) { index in
                        if index == column3.count - 1 {
                            CardView(card: column3[index])
                                .draggable(Image(column3.last?.getImageName() ?? "card_back"))
                            
                        } else {
                            CardView(card: column3[index])
                        }
                    }
                    .frame(height: 55)
                    
                    Spacer()
                }
                
                VStack{
                    ForEach(0..<column4.count, id: \.self) { index in
                        if index == column4.count - 1 {
                            CardView(card: column4[index])
                                .draggable(Image(column4.last?.getImageName() ?? "card_back"))
                            
                        } else {
                            CardView(card: column4[index])
                        }
                    }
                    .frame(height: 55)
                    Spacer()
                }
                
                VStack{
                    ForEach(0..<column5.count, id: \.self) { index in
                        if index == column5.count - 1 {
                            CardView(card: column5[index])
                                .draggable(Image(column5.last?.getImageName() ?? "card_back"))
                            
                        } else {
                            CardView(card: column5[index])
                        }
                    }
                    .frame(height: 55)
                    Spacer()
                }
                VStack{
                    ForEach(0..<column6.count, id: \.self) { index in
                        if index == column6.count - 1 {
                            CardView(card: column6[index])
                                .draggable(Image(column6.last?.getImageName() ?? "card_back"))
                            
                        } else {
                            CardView(card: column6[index])
                        }
                    }
                    .frame(height: 55)
                    Spacer()
                }
                    
                VStack{
                    ForEach(0..<column7.count, id: \.self) { index in
                        if index == column7.count - 1 {
                            CardView(card: column7[index])
                                .draggable(Image(column7.last?.getImageName() ?? "card_back"))
                            
                        } else {
                            CardView(card: column7[index])
                        }
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
    
    func checkValidMove(currentCard: Card, stack: [Card]) -> Bool{
        var validMove = false
        var suitCardSelected = ""
        var suitCardDown = ""
        var cardColor = ""
        
        
        // empty stack should work
        if stack.isEmpty && currentCard.symbol == "A"{
            return true
        } else if stack.isEmpty {
            return false
        }
        
        let suit = stack[0].suit
        if suit == currentCard.suit && stack.last?.symbol == "10" && currentCard.symbol == "J" {
            return true
        }
        if suit == currentCard.suit && stack.last?.value == currentCard.value - 1 {
            return true
        }else {
            return false
        }
        
        return false
        
        
    }
}
    
    #Preview(body: {
        ContentView()
    })
