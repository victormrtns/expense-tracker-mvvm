//
//  Income.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import Foundation
import SwiftData

@Model
class IncomeItem: Identifiable {
    var name: String
    var descriptionitem: String?
    var value: Double
    
    
    init(name: String, descriptionitem: String? = nil, value: Double) {
        self.name = name
        self.descriptionitem = descriptionitem
        self.value = value
    }
}
