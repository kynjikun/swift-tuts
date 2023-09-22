//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Kynji Kyle Niño A. Pepito on 9/19/23.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            MemoryGameView(viewModel: game)
        }
    }
}
