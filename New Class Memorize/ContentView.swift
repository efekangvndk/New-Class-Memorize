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
        HStack(content: {
              
                       
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.black)
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
            Text("Hello").font(.largeTitle)
                
                    
 
        
        })
    }
}



#Preview {
    ContentView()
}
