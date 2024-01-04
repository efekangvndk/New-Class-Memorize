//
//  ContentView.swift
//  New Class Memorize
//
//  Created by Efekan Güvendik on 21.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                CardView(isFaceUp: true)
                CardView()
                CardView()
                CardView()
                CardView()
                
                
            }
  
        }
        .foregroundColor(.blue)
        .padding()
    }
}

struct CardView : View {
    
    var isFaceUp : Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
            
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 50)
                    .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                Text("💩").font(.largeTitle)
        }else{
            RoundedRectangle(cornerRadius: 50)
                .foregroundColor(.blue)
        }
        })
    }
}

#Preview {
    ContentView()
}
