//
//  Income.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import Foundation


struct IncomeItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String?
    var value: Double
}
