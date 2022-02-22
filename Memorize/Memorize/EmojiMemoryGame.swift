//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nooralam Shaikh on 16/02/22.
//

import SwiftUI


final class EmojiMemoryGame: ObservableObject {
    
    static let emojis = ["✌","😂","😝","😁","😱","👉","🙌","🍻","🔥","🌈","☀","🎈","🌹","💄","🎀","⚽","🎾","🏁","😡","👿","🐻","🐶","🐬","🐟","🍀","👀","🚗","🍎","💝","💙","👌","❤","😍","😉","😓","😳","💪","💩","🍸","🔑","💖","🌟","🎉","🌺","🎶","👠","🏈","⚾","🏆","👽","💀","🐵","🐮","🐩","🐎","💣","👃","👂","🍓","💘","💜","👊","💋","😘","😜","😵","🙏","👋","🚽","💃","💎","🚀","🌙","🎁","⛄","🌊","⛵","🏀","🎱","💰","👶","👸","🐰","🐷","🐍","🐫","🔫","👄","🚲","🍉","💛","💚"]
    
    @Published private var model: MemoryGame<String> = MemoryGame(numberOfPairsOfCards: 5) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK:- Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
