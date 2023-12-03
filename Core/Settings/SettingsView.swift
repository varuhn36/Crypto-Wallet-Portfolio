//
//  SettingsView.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-16.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.theme.background
                    .ignoresSafeArea()
                
                // content
                List {
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
//                    applicationSection
//                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                        print("clicked")
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    })
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
//            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
        }
    }
    
    
//    private var applicationSection: some View {
//        Section(header: Text("Application")) {
//            Link("Terms of Service", destination: defaultURL)
//            Link("Privacy Policy", destination: defaultURL)
//            Link("Company Website", destination: defaultURL)
//            Link("Learn More", destination: defaultURL)
//        }
//    }
    
    
}
