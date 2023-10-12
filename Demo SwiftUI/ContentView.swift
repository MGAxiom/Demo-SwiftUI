//
//  ContentView.swift
//  Demo SwiftUI
//
//  Created by Maxime Girard on 09/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var bestScore = 0
    @State var gameIsInProgress = false
    var body: some View {
        VStack {
            HStack {
                if score >= bestScore && score != 0  {
                    Image(systemName: "flame")
                }
                Text("Score : \(score)")
                    .foregroundColor(.blue)
                    
                .padding()
            }
            .font(.largeTitle)
            .bold()
            Spacer()
            if gameIsInProgress  == true {
                HStack {
                    Image(systemName: "plus.square")
                        .font(.title)
                        .onTapGesture {
                            score += 1
                        }
                }
            }
            Spacer()
            if gameIsInProgress == false {
                Button("Nouvelle partie") {
                    score = 0
                    gameIsInProgress = true
                    Timer.scheduledTimer(withTimeInterval: 10.0, repeats: false) { _ in
                        gameIsInProgress = false
                        if score > bestScore {
                            bestScore = score
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Group {
        ContentView()
    }
    .previewLayout(.fixed(width: 300, height: 300))
}
