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
            }, label: {
                Text("Check")
                })
                .buttonStyle(.bordered)
            // Show answer
            Text(currentCard.meaning)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            // Show a new question
            Button(action: {
                // Get another question
                currentCard = listOfCards.randomElement()!
                // Hide the answer
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

