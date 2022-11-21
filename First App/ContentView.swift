//
//  ContentView.swift
//  First App
//
//  Created by Kyle Grewe on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .padding(.horizontal, 10.0)
                .padding(.vertical, 5.0)
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Text("Made with love by Kyle Grewe")
                    .padding(.top, 20.0)
                Image(systemName: "heart")
                .foregroundColor(.blue)
                
        }
        .padding(30.0)
    }
}





































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
