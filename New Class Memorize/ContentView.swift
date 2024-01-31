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
                
                let emeji : Array<String> = ["😈", "🎃","🕷️","👻"]
                
                /*
                ForEach(0...4, id : \.self) { index in                   // Bu bölge hatalı ancak video izlendi.
                 }                                                       //Burda 0'dan 4'e kadar demek eğer iki nokta ise dört dahil değil üc ise dahil demektir.
                  */
                    
                 

                CardView(content2 : emeji[0], isFaceUp: true)           // Tanımladığımız değişkenleri buraya yazdık kısa bir func.
                CardView(content2 : emeji[1] , isFaceUp:true)
                SecCardView(content : emeji[2], isFaceDown: true)       // Örneklenmeyi çağaltmak için yaprım.
                SecCardView(content : emeji[3], isFaceDown: true )
                
            }
        }
        
        .foregroundColor(.black)
        .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))                   // Boşluk bırakmak ve detay.
        
    }
}

/// --- Öğrenim herne oluşturduysak onun modifiye için altına uygun methodu yazmak yeterli.



struct CardView : View {
    let content2 : String
    @ State var isFaceUp : Bool = false // Bool : true veya false için bir parametredir. Bu şekilde kısa yoldan if else yerine kullanarız.
    var body: some View {
        ZStack{                                                     // İç İçe demek   <----------->   Ek olarak Hstack de yan yana demek.
            if isFaceUp {                                           // Bu isFaceUp parametre bize mi dönük yoksa arkası mı dönük anlamındadır.
                ZStack(alignment: .top, content: {                  // Üstlü altı demek.
                    let base :  RoundedRectangle = RoundedRectangle(cornerRadius: 10)            // Kenear Yuvarlaklığı için
                    base.fill(LinearGradient(                       // Cisimler için (kare daire v.b)içini doldur demek
                    gradient: Gradient(colors: [.red, .pink, .purple,.white, .white, ]), // Bir alanın türevi anlamında gelir hafif geçiş
                    startPoint: .bottom,                                                 // Yaparken işimize yara.
                    endPoint: .top
                                            ))
                    .foregroundColor(.black)                        // Arkaplan rengi
                    VStack{
                        Text(content2).font(.largeTitle)            // .font size ayarı
                        Text("Booo").font(.largeTitle)
                            .foregroundColor(.purple)
                    }
                   
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.black))
                    RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))     // Açılan küçük çizgi ayarları.
                    .foregroundColor(.black)
                    
                })
                
            }else{
                ZStack(alignment: .center, content :{
                    RoundedRectangle(cornerRadius: 50)
                    .foregroundColor(.purple)                      // Burada kullandığımız foregroundColor text gibi cisimleri alır
                    Text("Hİ").font(.title)                        // Bunun yerine backGrounc kullanırsak direk arka plana demiş olur.
                    .foregroundColor(.white)
                    .rotationEffect(Angle(degrees: 90))
                    .background(RoundedRectangle(cornerRadius: 100).foregroundColor(.black))  // yazının arka planı düşünülür. ve aynı zaman eğimli
                    RoundedRectangle(cornerRadius: 50)
                    .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                    .foregroundColor(.red)
                })
            }
        }
        .onTapGesture (count : 1, perform: {
            isFaceUp = !isFaceUp
             print("Tapped")
        })
    }
}

struct SecCardView : View {
    let content : String
   @State var isFaceDown : Bool = false                           // Neden State kullandık oluşturduğumuz işlevi kullanılan değişkenin daha sonra da
    var body: some View {                                         // Biçimlenmesi anlanda getirilebilir demek gibi olur. Örğenğin Swtich aç , kapa gibi.
        ZStack{
            if isFaceDown {
                ZStack(alignment: .center, content: {
                    
                    let base2 = Circle()                          // Üst kısım ile arasındaki fark birine direk tanım diğerinde otomatik bırakdık.
                    base2.fill(LinearGradient(
                        gradient: Gradient(colors: [.blue ,.blue, .red, .pink, .purple, .white, ]),
                    startPoint: .bottom,
                    endPoint: .center
                    ))
                    
                    .foregroundColor(.black)
                    VStack{
                        Text(content).font(.largeTitle)
                        .foregroundColor(.black)
                        Text("FEAR :D ")
                    }
                    Circle()
                    .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                    
                })
                
            }else{
                
                ZStack(alignment: .center, content :{
                    Circle()
                    .foregroundColor(.yellow)
                    Text("Heyo").font(.title)
                    .foregroundColor(.black)
                    .rotationEffect(Angle(degrees: 45))
                    .background(RoundedRectangle(cornerRadius: 10))
                    .foregroundColor(.white)
                    Circle()
                    .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                    .foregroundColor(.red)
                    
                })
            }
        }
        .onTapGesture (count : 1, perform: {
            isFaceDown.toggle()
             print("Tapped")
            })
        }
    }


#Preview {                                                        // Ön izleme teknik açıdan Canvas
    ContentView()
}
