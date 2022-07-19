//
//  memorizeApp.swift
//  memorize
//
//  Created by ali on 10/24/21.
//

import SwiftUI

@main
struct memorizeApp: App {
    
    
    
    var game: EmojiMemoryGame = EmojiMemoryGame()

    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
