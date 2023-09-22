//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Kynji Kyle Niño A. Pepito on 9/21/23.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    
    init (numberOfPairs: Int, faceFactory: (Int) -> CardContent) {
        cards = []
        
        for pairIndex in 0..<max(2, numberOfPairs) {
            let face: CardContent =  faceFactory(pairIndex)
            cards.append(Card(face: face, id: "\(pairIndex)a"))
            cards.append(Card(face: face, id: "\(pairIndex)b"))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    struct Card: Equatable, Identifiable, CustomDebugStringConvertible {
        var debugDescription: String {
            return "\(id): \(face) \(isFaceUp ? "up" : "down") \(isMatched ? "matchete" : "")"
        }
        
        
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        let face: CardContent
        
        var id: String
    }
}
