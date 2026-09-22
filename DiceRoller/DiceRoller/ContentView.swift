//
//  ContentView.swift
//  DiceRoller
//
//  Created by Student2 on 14/09/2026.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]

struct ContentView: View {
    
    @State private var numberOfDice: Int = 1
    var body: some View {
        VStack {
            
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)
            
            HStack {
                VStack {
                    ForEach(1...numberOfDice, id: \.description) { _ in
                        DiceView()
                    }
                }
            }
            
            HStack{
                Button("Remove Dice",systemImage: "minus.circle.fill"){
                    withAnimation{
                        numberOfDice-=1
                    }
                   // .symbolRenderingMode(mode: .palette)
                }.disabled(numberOfDice == 5)
                
                Button("Add Dice",systemImage: "plus.circle.fill"){
                    withAnimation{
                        numberOfDice+=1
                    }
                }.disabled(numberOfDice == 5)
                }

        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .labelStyle(.iconOnly)
        .font(.headline)
        .background(Gradient(colors: gradientColors))
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
