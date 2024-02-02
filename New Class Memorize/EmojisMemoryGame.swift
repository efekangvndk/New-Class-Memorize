//
//  EmojisMemoryGame.swift
//  New Class Memorize
//
//  Created by Efekan Güvendik on 1.02.2024.
//
                                                         ///----------View Model----------///

import SwiftUI

class EmojisMemoryGame {
   private var model : MemoryGame<String>
    var cards : Array<MemoryGame<String>.Card>{
        return model.cards
    }
    func choose(card: MemoryGame<String>.Card){
        model.choose(card:card)
    }
}

