//
//  ContentView.swift
//  Memorize
//
//  Created by Kumar Gaurav on 09/06/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["😀","😀","😀","😀",":P"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index], isFaceUp: false)
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView:View {
    var content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack  {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base
                    .foregroundColor(.white)
            base
                    .strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
               base
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

 














#Preview {
    ContentView()
}
