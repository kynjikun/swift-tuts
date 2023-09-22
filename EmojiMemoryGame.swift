//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kynji Kyle Niño A. Pepito on 9/21/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis =  ["👻", "🎃", "🕷️", "🧙", "👾", "🧛‍♀️", "🤺", "🧜🏿‍♀️"]
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairs: 8) { i in
            if emojis.indices.contains(i) {
                return emojis[i]
            } else {
                return "!?"
            }
        }
    }
    
    @Published private var model  = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func choose (_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func shuffle () {
        model.shuffle()
    }
}
