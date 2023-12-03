//
//  HapticManager.swift
//  Crypto_Tracker
//
//  Created by Varuhn Anandaraj on 2023-11-16.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
