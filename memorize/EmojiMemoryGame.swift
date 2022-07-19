//
//  EmojiMemoryGame.swift
//  memorize
//
//  Created by ali on 7/16/22.
//

import SwiftUI


func makeCardContent(index: Int) -> String{
    return "🎉"
}


class EmojiMemoryGame {
    
    static var emojis = ["😭", "💛", "✈️", "😱","😂", "😆","😳", "🥹","🥲", "😇","❌", "😁",]
    
    static func createMemoryGame() -> MemoryGame<String> {MemoryGame<String>(numberOfPairs: 3 ) { pairIndex in EmojiMemoryGame.emojis[pairIndex] }}

    
    public var model: MemoryGame<String> =
    createMemoryGame()
    
}
