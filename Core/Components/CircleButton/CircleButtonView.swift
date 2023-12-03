//
//  CircleButtonView.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-15.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
        .font(.headline)
        .foregroundColor(Color.theme.accent)
        .frame(width: 50, height: 50)
        .background(
            Circle()
                .foregroundColor(Color.theme.background)
        )
        .shadow(
            color: Color.theme.accent.opacity(0.25),
            radius: 10, x: 0.0, y: 0.0)
        .padding()
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            CircleButtonView(iconName: "info")
                .previewLayout(.sizeThatFits)
            
            CircleButtonView(iconName: "plus")
                .padding()
                .previewLayout(.sizeThatFits)
        }
    }
}
