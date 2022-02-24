//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Nooralam Shaikh on 14/02/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiGameMemoryView(game: game)
        }
    }
}
