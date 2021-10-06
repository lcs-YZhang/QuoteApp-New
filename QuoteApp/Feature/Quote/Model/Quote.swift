//
//  Quote.swift
//  QuoteApp
//
//  Created by Steven Zhang on 2021-10-06.
//

import Foundation

struct Quote: Decodable {
    let anime: String
    let character: String
    let quote: String
}

extension Quote {
    
    static let dummyData: [Quote] = [
            Quote(anime: "Anime1", character: "Character1", quote: "Random Quote1"),
            Quote(anime: "Anime2", character: "Character2", quote: "Random Quote2"),
            Quote(anime: "Anime3", character: "Character3", quote: "Random Quote3"),
            Quote(anime: "Anime4", character: "Character4", quote: "Random Quote4"),
            Quote(anime: "Anime5", character: "Character5", quote: "Random Quote5")
        ]
}
