//
//  String.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-16.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
