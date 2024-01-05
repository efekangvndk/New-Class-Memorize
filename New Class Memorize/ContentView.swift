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
                CardView(isFaceUp: false)
                CardView(isFaceUp: true)
                CardView()
                
             
            }
  
        }
        .foregroundColor(.gray)
        .padding()
    }
}

struct CardView : View {
    
    var isFaceUp : Bool = false
    var body: some View {
            ZStack(alignment: .top, content: {   // İç İçe demek                 Ek olarak Hstack de yan yana demek.
                if isFaceUp {           // Bu karşmaşık olay bize mi dönük yoksa arkası mı dönük anlamındadır.
                VStack{         // Üstlü altı demek.
                    RoundedRectangle(cornerRadius: 50)          // Kenear Yuvarlaklığı için
                        .foregroundColor(.black)                // Arkaplan rengi
                    Text("Hello").font(.largeTitle)             // .font size ayarı
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))   // Açılan küçük çizgi ayarları.
                    
                }
            
                }else{
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.yellow)
                        Text("Merhaba").font(.title)
                        RoundedRectangle(cornerRadius: 50)
                            .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                }
            }
        })
    }
}



#Preview {
    ContentView()
}
