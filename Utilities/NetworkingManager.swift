//
//  NetworkingManager.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-15.
//

import Foundation
import Combine

class NetworkingManager {
    
    
    enum NetworkingError: LocalizedError {
        case badURLRepsone(url: URL)
        case unknown
        
        var errorDescription: String?{
            switch self{
            case.badURLRepsone(url: let url): return "Bad Response from URL: \(url)"
            case.unknown: return "Unknown Error Occured"
            }
        }
    }
        
        static func download(url: URL) -> AnyPublisher<Data, Error> {
            return URLSession.shared.dataTaskPublisher(for: url)
                .tryMap({try handleURLResponse(output: $0, url: url)})
                .eraseToAnyPublisher()
        }
        
        static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
            guard let response = output.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300
            else
            {
                throw URLError(.badServerResponse)
            }
            return output.data
        }
        
        
        static func handleCompletion(completion: Subscribers.Completion<Error>){
            switch completion {
            case .finished:
                break
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
}
