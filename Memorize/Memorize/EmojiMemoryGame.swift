//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Nooralam Shaikh on 16/02/22.
//

import SwiftUI


final class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["✌","😂","😝","😁","😱","👉","🙌","🍻","🔥","🌈","☀","🎈","🌹","💄","🎀","⚽","🎾","🏁","😡","👿","🐻","🐶","🐬","🐟","🍀","👀","🚗","🍎","💝","💙","👌","❤","😍","😉","😓","😳","💪","💩","🍸","🔑","💖","🌟","🎉","🌺","🎶","👠","🏈","⚾","🏆","👽","💀","🐵","🐮","🐩","🐎","💣","👃","👂","🍓","💘","💜","👊","💋","😘","😜","😵","🙏","👋","🚽","💃","💎","🚀","🌙","🎁","⛄","🌊","⛵","🏀","🎱","💰","👶","👸","🐰","🐷","🐍","🐫","🔫","👄","🚲","🍉","💛","💚"]
    
    @Published private var model: MemoryGame<String> = MemoryGame(numberOfPairsOfCards: 5) { pairIndex in
        emojis[pairIndex]
    }
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK:- Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}
