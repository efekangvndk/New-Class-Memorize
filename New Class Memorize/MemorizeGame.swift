//
//  MemorizeGame.swift
//  New Class Memorize
//
//  Created by Efekan Güvendik on 1.02.2024.
//

import Foundation

struct MemoryGame<cardContent> {    // Bir yapı oluşturduk ve adını hafıza oyunu koyduk ancak yanına kendi tanımıızı koyduk cardContent
                                    // Bu tanım ile kendimze bir any , some , string v.b. bir yapı yaptık.
    var cards : Array<Card>         // Burda Bir değişken yapıp Bir Dizi oluşturduk. cards değişkeni içinde Card dizisi
    
    func choose(card:Card){         // Burda İstenilen işlemi yani seçme işlemini func olarak yaptık ki çalışsın.
        
    }
    struct Card{                    // Bir adet daha yapı yaptık ve bu yapı içine değişkenleri ve işlemleri tanımladık isFaceUp gibi.
        var isFaceUp: Bool
        var isMatched: Bool
        var content: cardContent    // Seçilen contentin ne olduğu önemli olmadığından oluşturduğumuz yeni class'ı kullandık. Aslında Dont Care kullandık. 
    }
}
