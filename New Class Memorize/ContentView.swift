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
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                      //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                    Text("💩").font(.largeTitle)
                })
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                    //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                  RoundedRectangle(cornerRadius: 50)
                      .foregroundColor(.white)
                  RoundedRectangle(cornerRadius: 50)
                      .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                  Text("💩").font(.largeTitle)
              })
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                    //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                  RoundedRectangle(cornerRadius: 50)
                      .foregroundColor(.white)
                  RoundedRectangle(cornerRadius: 50)
                      .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                  Text("💩").font(.largeTitle)
              })
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                    //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                  RoundedRectangle(cornerRadius: 50)
                      .foregroundColor(.white)
                  RoundedRectangle(cornerRadius: 50)
                      .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                  Text("💩").font(.largeTitle)
              })
            }
            HStack{
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                      //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 50)
                        .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                    Text("💩").font(.largeTitle)
                })
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                    //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                  RoundedRectangle(cornerRadius: 50)
                      .foregroundColor(.white)
                  RoundedRectangle(cornerRadius: 50)
                      .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                  Text("💩").font(.largeTitle)
              })
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                    //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                  RoundedRectangle(cornerRadius: 50)
                      .foregroundColor(.white)
                  RoundedRectangle(cornerRadius: 50)
                      .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                  Text("💩").font(.largeTitle)
              })
                ZStack (content: { //ZStack olursa iç içe Vstack olursa alt üst HStack olursa yan yana
                    //burdan sonra eğer imagename dersek Assetlerden bir görünüm alır ve öyle gelir
                  RoundedRectangle(cornerRadius: 50)
                      .foregroundColor(.white)
                  RoundedRectangle(cornerRadius: 50)
                      .strokeBorder(style : StrokeStyle (lineWidth: 5, dash: [10,1] ))
                  Text("💩").font(.largeTitle)
              })
            }
        }
        
        
        
        .foregroundColor(.blue)
        .imageScale(.small)
        .padding()
    }
}

#Preview {
    ContentView()
}
