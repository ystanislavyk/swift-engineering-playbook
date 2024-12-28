//
//  Item.swift
//  iOSPlaygroundApp
//
//  Created by Yaroslav Stanislavyk on 28.12.2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
