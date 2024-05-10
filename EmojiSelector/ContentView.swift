//
//  ContentView.swift
//  EmojiSelector
//
//  Created by Serhii Kobeza on 10.05.2024.
//

import SwiftUI

enum Emoji: String, CaseIterable{
    case 😀, 🤣, 😛, 😎, 🤑, 🏍️, 🤘
}

struct ContentView: View {
    @State var selection: Emoji = .🤘
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self){ emoji in
                        Text(emoji.rawValue)
                    }
                }.pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Selector!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
