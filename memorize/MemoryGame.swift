//
//  MemoryGame.swift
//  memorize
//
//  Created by ali on 7/16/22.
//

//import SwiftUI
//
//struct MemoryGame: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct MemoryGame_Previews: PreviewProvider {
//    static var previews: some View {
//        MemoryGame()
//    }
//}


import Foundation


struct MemoryGame <CardContent>{
    
    private(set) var cards: Array<Card>

    init(numberOfPairs: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairs{
            let content = createCardContent(pairIndex)
            cards.append( Card(content: content))
            cards.append( Card(content: content))
            
        }
    }
    
    
    
    func choose(_ card: Card){
        
    }
    
    struct Card
    {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
