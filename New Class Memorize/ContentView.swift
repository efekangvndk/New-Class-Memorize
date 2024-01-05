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
                CardView(isFaceUp: false)
                
            }
            
        }
        .foregroundColor(.gray)
        .padding()
    }
}

struct CardView : View {
    
    var isFaceUp : Bool = false
    var body: some View {
        ZStack{                      // İç İçe demek   <----------->   Ek olarak Hstack de yan yana demek.
            if isFaceUp {                                       // Bu karşmaşık olay bize mi dönük yoksa arkası mı dönük anlamındadır.
                ZStack(alignment: .top, content: {              // Üstlü altı demek.
                    RoundedRectangle(cornerRadius: 50)          // Kenear Yuvarlaklığı için
                        .foregroundColor(.black)                // Arkaplan rengi
                    Text("Hello").font(.largeTitle)             // .font size ayarı
                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.white))   //Hello yazısının arkasına koyulmuş bir background.
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))          // Açılan küçük çizgi ayarları.
                    
                })
                
            }else{
                ZStack(alignment: .center, content :{
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.yellow)                // Burada kullandığımız foregroundColor text gibi cisimleri alır
                    Text("Merhaba").font(.title)                 // Bunun yerine backGrounc kullanırsak direk arka plana demiş olur.
                        .rotationEffect(Angle(degrees: 50))
                        .background(RoundedRectangle(cornerRadius: 100).foregroundColor(.black)) // yazının arka planı gibi düşünülür. ve aynı zaman eğimli
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                })
            }
        }
    }
}



#Preview {
    ContentView()
}
