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
                CardView(isFaceUp: true)
                CardView(isFaceUp: true)
                CardView(isFaceUp: true)
                CardView(isFaceUp: true)
                
                
            }
  
        }
        .foregroundColor(.blue)
        .padding()
    }
}

struct CardView : View {
    
    var isFaceUp : Bool = false
    var body: some View {
        VStack(content: {
            if isFaceUp {
                ZStack{
                    HStack{
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.white)
                        RoundedRectangle(cornerRadius: 50)
                            .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                        Text("💩").font(.largeTitle)
                    }
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                    Text("💩").font(.largeTitle)
                }
                RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 50)
                    .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                Text("💩").font(.largeTitle)
        }else{
            RoundedRectangle(cornerRadius: 50)
                .foregroundColor(.orange)
        }
        })
    }
}

#Preview {
    ContentView()
}
