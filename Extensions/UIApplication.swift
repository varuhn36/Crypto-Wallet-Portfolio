//
//  UIApplication.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-15.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
