//
//  ContentView.swift
//  First App
//
//  Created by Kyle Grewe on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🛫", "🥺", "🙂", "😎", "🥺","🛫", "🥺", "🙂", "😎", "🥺"]
    @State var emojiCount = 4
    var body: some View {
        VStack{
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) {emoji in
                    CardView(content: emoji)
                }
            }
            HStack{
                remove
                Spacer()
                add
            }.padding()
          
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
    var remove: some View {
        Button(action: {
            if emojiCount > 1 {
                emojiCount -= 1}
        }, label: {Image(systemName: "minus.circle")})
    }
    
    var add: some View {
        Button(action: {
            if emojiCount < emojis.count {
                emojiCount += 1}
            }, label: {Image(systemName: "plus.circle")}
        )}
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.stroke(lineWidth: 3)
                shape.fill().foregroundColor(.white)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
            
        }
    }
}


    

















//            Text("Made with love by Kyle Grewe")
//                .padding(.top, 45.0)
//            Image(systemName: "heart")
//                .foregroundColor(.blue)
//                .padding(.top, 45.0)













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
