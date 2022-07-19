//
//  ContentView.swift
//  memorize
//
//  Created by ali on 10/24/21.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: EmojiMemoryGame
    
    
    var emojis = ["😭", "💛", "✈️", "😱","😂", "😆","😳", "🥹","🥲", "😇","❌", "😁",]
    @State var emojiCount = 6
    
    var body: some View {
        
        VStack(){
            
            ScrollView{LazyVGrid(columns: [GridItem(),GridItem(),GridItem()] ){
           
            ForEach(emojis[0..<emojiCount],id: \.self)
                {emoji in SingleCard(isFaceUp: true, emojiVal: emoji).aspectRatio(2/3, contentMode: .fit)}
            }
        }
            Spacer()
            
            HStack{
                
                Button(
                    action: {
                        emojiCount -= 1
                    },
                    label: {
                        
                        Image(systemName: "minus" ).imageScale(.large)
                    }
                      )
                Spacer()
                Button(
                    action: {
                        emojiCount += 1
                    },
                    label: {
                        Image(systemName: "plus.circle").imageScale(.large)
                    
                }
                )
                
                
                
            }.padding(20)
            
        
          
        
        }.padding(.all)
    }
}



struct SingleCard:  View{
   
    @State var isFaceUp: Bool
    var emojiVal: String
    
    var body: some View{

        ZStack{
            
            let shape = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp{
            
                shape.stroke(lineWidth: 5).foregroundColor(.red)
                Text(emojiVal)
            .font(.largeTitle)
            .foregroundColor(Color.yellow)
                    
            }
            
            
            else{
                
                shape.fill() .foregroundColor(.red)
                
                
            }
        }.onTapGesture {
            isFaceUp  = !isFaceUp
        }
        
        
        
    }
    


}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game: EmojiMemoryGame = EmojiMemoryGame()
        ContentView(viewModel: game)
    }
}

