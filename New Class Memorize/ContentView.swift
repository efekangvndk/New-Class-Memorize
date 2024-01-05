//
//  ContentView.swift
//  New Class Memorize
//
//  Created by Efekan Güvendik on 21.12.2023.
//

import SwiftUI

struct ContentView: View {         //Struck yapı elemanları için kullanırız.
    var body: some View {          // body : bir view yaptığımız onun vicudu gibi düşünürüz.
        VStack{
            HStack{
                
                CardView(isFaceUp: false)                      // Tanımladığımız değişkenleri buraya yazdık kısa bir func.
                CardView(isFaceUp: true)

                
            }
            
        }
        .foregroundColor(.black)
        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))                   // Boşluk bırakmak ve detay.
    }
}

                                        /// --- Öğrenim herne oluşturduysak onun modifiye için altına uygun methodu yazmak yeterli.



struct CardView : View {
    
    var isFaceUp : Bool = false         // Bool : true veya false için bir parametredir. Bu şekilde kısa yoldan if else yerine kullanarız.
    var body: some View {
        ZStack{                         // İç İçe demek   <----------->   Ek olarak Hstack de yan yana demek.
            if isFaceUp {                                       // Bu isFaceUp parametre bize mi dönük yoksa arkası mı dönük anlamındadır.
                ZStack(alignment: .top, content: {              // Üstlü altı demek.
                    RoundedRectangle(cornerRadius: 10)          // Kenear Yuvarlaklığı için
                        .fill(LinearGradient(                   // Cisimler için (kare daire v.b)içini doldur demek
                            gradient: Gradient(colors: [.red, .pink, .purple,.white, .white, ]), // Bir alanın türevi anlamında gelir hafif geçiş
                            startPoint: .bottom,                                                 // Yaparken işimize yara.
                            endPoint: .top
                                            ))
                        .foregroundColor(.black)                // Arkaplan rengi
                    Text("Hello").font(.largeTitle)             // .font size ayarı
                        .foregroundColor(.pink)
                        .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.black))
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))          // Açılan küçük çizgi ayarları.
                        .foregroundColor(.black)
                    
                })
                
            }else{
                ZStack(alignment: .center, content :{
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.purple)                // Burada kullandığımız foregroundColor text gibi cisimleri alır
                    Text("Merhaba").font(.title)                 // Bunun yerine backGrounc kullanırsak direk arka plana demiş olur.
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: 90))
                        .background(RoundedRectangle(cornerRadius: 100).foregroundColor(.black)) // yazının arka planı düşünülür. ve aynı zaman eğimli
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                        .foregroundColor(.red)
                })
            }
        }
    }
}



#Preview {            // Ön izleme teknik açıdan Canvas
    ContentView()
}
