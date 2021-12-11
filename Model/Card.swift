//
//  Card.swift
//  TurkishWordsFlashCards
//
//  Created by Berk Bozkurt on 2021-12-10.
//

import Foundation

// Defines the information we'll track.
// "Blueprint" for a card.
struct Card {
    let word: String
    let meaning: String
}

// Define a list of cards to quiz with.
let listOfCards = [

    Card(word: "Merhaba!", meaning: "Hello!")
    ,
    Card(word: "İyi akşamlar!", meaning: "Good evening!")
    ,
    Card(word: "Hoşçakal!", meaning: "Good-bye!")
    ,
    Card(word: "Nasılsın?", meaning: "How are you?")
    ,
    Card(word: "İyiyim, sen nasılsın?", meaning: "I am fine, and you?")
    ,
    Card(word: "Teşekkür ederim.", meaning: "Thank you.")
    ,
    Card(word: "Lütfen.", meaning: "Please.")
]
