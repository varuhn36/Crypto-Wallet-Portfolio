//
//  MarketDataService.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-16.
//

import Foundation
import Combine


class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    var marketDataSubscription: AnyCancellable?
    
    init(){
        getData()
    }
    
    func getData(){
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }

        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    print("Data received successfully.")
                case .failure(let err):
                    print("An error occurred: \(err)")
                }
            }, receiveValue: { [weak self] (returnedGlobalData) in
                self?.marketData = returnedGlobalData.data
                print("Market data: \(String(describing: self?.marketData))")
                self?.marketDataSubscription?.cancel()
            })
   }
   
}
