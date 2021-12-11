//
//  ContentView.swift
//  TurkishWordsFlashCards
//
//  Created by Berk Bozkurt on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    // Store the card to work with
    // It is randomly selected from the list of cards.
    @State var currentCard = listOfCards.randomElement()!
    @State var previousCard = listOfCards.randomElement()!
    
    // This controls whether the meaning is visible
    @State var isMeaningShowing = false
    
    // MARK: Computed Properties
    var body: some View {
        ScrollView {
            // Show question
            Text(currentCard.word)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            // Check answer
            Button(action: {
                // Reveal the answer
                isMeaningShowing = true
            }, label: {
                Text("Check")
                })
                .buttonStyle(.bordered)
            // Show answer
            Text(currentCard.meaning)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            //          CONDITION          TRUE FALSE
                .opacity(isMeaningShowing ? 1.0 : 0.0)
            
            // Show a new question
            Button(action: {
                // Keep track of the previous Flash Card
                previousCard = currentCard
                
                while previousCard == currentCard {
                    currentCard = listOfCards.randomElement()!
                }
                // Hide the answer
                isMeaningShowing = false
            }, label: {
                Text("Antoher")
        })
                .buttonStyle(.bordered)
    }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

