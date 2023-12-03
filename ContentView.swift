//
//  ContentView.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            VStack{
                Text("AccentColor").foregroundColor(Color.theme.accent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
